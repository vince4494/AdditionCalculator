//
//  ViewController.swift
//  AdditionCalc
//
//  Created by Vince Zipparro on 1/21/16.
//  Copyright © 2016 Vince Zipparro. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var isClear = false
    var firstNum = 0
    var secondNum = 0
    var operation = " "
    var result = 0
    
    @IBOutlet var calcDisplay: UILabel!
    
    @IBAction func numberTapped(sender: AnyObject)
    {
        let number = sender.currentTitle
        
        if (isClear)
        {
            calcDisplay.text = calcDisplay.text! + number!!
        }
        else
        {
            calcDisplay.text = number
            isClear = true
        }
    }
    
    @IBAction func additionBtn(sender: AnyObject)
    {
        let op = sender.currentTitle
        isClear = false
        firstNum = Int(calcDisplay.text!)!
        calcDisplay.text = calcDisplay.text! + op!!
        calcDisplay.text = sender.currentTitle
        operation = sender.currentTitle!!
     
    }
    
    @IBAction func equalBtn(sender: AnyObject)
    {
        isClear = false
        secondNum = Int(calcDisplay.text!)!
        
        if (operation == "+")
        {
            result = firstNum + secondNum
        }
        calcDisplay.text = "\(result)"
    }
    
    @IBAction func clearBtn(sender: AnyObject)
    {
        isClear = false
        firstNum = 0
        secondNum = 0
        operation = " "
        result = 0
        calcDisplay.text = "\(result)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

