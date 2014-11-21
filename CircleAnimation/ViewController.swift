//
//  ViewController.swift
//  CircleAnimation
//
//  Created by Zhou Hao on 20/11/14.
//  Copyright (c) 2014年 Zhou Hao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topImgView: UIImageView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var lblTop: UILabel!
    
    @IBOutlet weak var bottomImgView: UIImageView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var lblBottom: UILabel!
    
    @IBOutlet weak var topSwitch: UISwitch!
    @IBOutlet weak var bottomSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.topImgView.transform = CGAffineTransformMakeScale(0, 0)
        self.topView.clipsToBounds = true
        self.topSwitch.setOn(false, animated: false)
        self.lblTop.textColor = UIColor.blueColor()
        
        self.bottomView.clipsToBounds = true
        self.bottomSwitch.setOn(false, animated: false)
        self.bottomImgView.transform = CGAffineTransformMakeScale(0, 0)
        self.lblBottom.textColor = UIColor.blueColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTopSwitch(sender: AnyObject) {
        
        if let switcher = sender as? UISwitch {
            
            if switcher.on {

                UIView.animateWithDuration(0.6, animations: { () -> Void in
                    self.topImgView.transform = CGAffineTransformMakeScale(1, 1)
                    self.lblTop.textColor = UIColor.whiteColor()
                })

            } else {

                UIView.animateWithDuration(0.6, animations: { () -> Void in
                    self.topImgView.transform = CGAffineTransformMakeScale(0.0001, 0.0001)
                    self.lblTop.textColor = UIColor.blueColor()
                })
            }
        }
        
    }

    @IBAction func onBottomSwitch(sender: AnyObject) {
        
        if let switcher = sender as? UISwitch {
            
            if switcher.on {
                
                UIView.animateWithDuration(0.6, animations: { () -> Void in
                    self.bottomImgView.transform = CGAffineTransformMakeScale(1, 1)
                    self.lblBottom.textColor = UIColor.whiteColor()
                })
                
            } else {
                
                UIView.animateWithDuration(0.6, animations: { () -> Void in
                    self.bottomImgView.transform = CGAffineTransformMakeScale(0.0001, 0.0001)
                    self.lblBottom.textColor = UIColor.blueColor()
                })
                
            }
            
        }
    }
}

