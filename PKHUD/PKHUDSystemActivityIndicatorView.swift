//
//  PKHUDSystemActivityIndicatorView.swift
//  PKHUD
//
//  Created by Philip Kluz on 6/12/15.
//  Copyright (c) 2016 NSExceptional. All rights reserved.
//  Licensed under the MIT license.
//

import UIKit

/// PKHUDSystemActivityIndicatorView provides the system UIActivityIndicatorView as an alternative.
public final class PKHUDSystemActivityIndicatorView: PKHUDSquareBaseView, PKHUDAnimating {
    public init() {
        super.init(frame: PKHUDSquareBaseView.defaultSquareBaseViewFrame)
        commonInit()
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        backgroundColor = UIColor.clear
        alpha = 0.8

        addSubview(activityIndicatorView)
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
        activityIndicatorView.center = center
    }

    let activityIndicatorView: UIActivityIndicatorView = {
        #if swift(>=4.2)
        let activity = UIActivityIndicatorView(style: .whiteLarge)
        #else
        let activity = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        #endif
        activity.color = UIColor.black
        return activity
    }()

    public func startAnimation() {
        activityIndicatorView.startAnimating()
    }
}
