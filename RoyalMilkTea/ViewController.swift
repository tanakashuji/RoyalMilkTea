//
//  ViewController.swift
//  RoyalMilkTea
//
//  Created by TANAKASHUJI on 2015/11/08.
//  Copyright © 2015年 TANAKASHUJI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pageMenu : CAPSPageMenu?

    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - UI Setup
        
        
        self.title = "PAGE MENU"
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        self.navigationController?.navigationBar.barStyle = UIBarStyle.Black
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.orangeColor()]
        
        // Do any additional setup after Loading the view, typically from a nib.
        
        // Array to keep track of controllers in page menu
        
        var controllerArray : [UIViewController] = []
        
        // Create variable for all view controllers you want to put in the
        // page menu, initialize them, and add each to the controller array.
        // (Can be any UIViewContoller subclass)
        // Make sure the title property of all view controllers is set
        // Example:
        let controller1 : UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller1.title = "SAMPLE TITLE"
        controllerArray.append(controller1)
        
        let controller2 : UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller2.title = "SAMPLE TITLE"
        controllerArray.append(controller2)
        
        let controller3 : UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller3.title = "SAMPLE TITLE"
        controllerArray.append(controller3)
        
        let controller4 : UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller4.title = "SAMPLE TITLE"
        controllerArray.append(controller4)
        
        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
        // Example:
        let parameters: [CAPSPageMenuOption] = [.ScrollMenuBackgroundColor(UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)),
            .ViewBackgroundColor(UIColor(red: 20.0/255.0, green: 20.0/255.0, blue: 20.0/255.0, alpha: 1.0)),
        .SelectionIndicatorColor(UIColor.orangeColor()),
            .BottomMenuHairlineColor(UIColor(red: 70.0/255.0, green: 70/255.0, blue: 80.0/255.0, alpha: 1.0)),
            .MenuItemFont(UIFont(name: "HelveticaNeue", size: 13.0)!),
        .MenuHeight(80.0),
        .MenuItemWidth(90.0),
        .CenterMenuItems(true)
        ]
        
        // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        
        self.addChildViewController(pageMenu!)
        self.view.addSubview(pageMenu!.view)
        
        pageMenu!.didMoveToParentViewController(self)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

