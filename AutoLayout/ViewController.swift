//
//  ViewController.swift
//  AutoLayout
//
//  Created by Zheng Hao Tan on 6/28/15.
//  Copyright (c) 2015 Zheng Hao Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    var secure: Bool = false { didSet { updateUI() } }

    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password" : "Password"
    }
    @IBAction func toggleSecurity() {
        secure = !secure
    }
}

