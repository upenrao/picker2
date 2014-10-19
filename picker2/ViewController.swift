//
//  ViewController.swift
//  picker2
//
//  Created by Upendra Rao on 10/16/14.
//  Copyright (c) 2014 Upendra Rao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    
    @IBOutlet var targetView: UIView?

    var colors = ["Red", "Purple", "Orange", "Light Gray", "Gray", "Green", "Cyan", "Brown", "Blue", "Black", "Clear"]

    var prevColor: UIColor = UIColor.redColor()
    var currColor = UIColor.redColor()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        targetView?.backgroundColor = UIColor.redColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return colors[row]
    }
    
     func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        println(colors[row])
        let value = true
        
//["Red", "Purple", "Orange", "Light Gray", "Gray", "Green", "Cyan", "Brown", "Blue", "Black", "Clear"]
        switch(colors[row]){
            case "Red":
                currColor = UIColor.redColor()
                pickerView.selectRow(row, inComponent: component, animated: true)
                UIView.animateWithDuration(1.5, animations: {
                    self.targetView?.backgroundColor = self.prevColor
                    self.targetView?.backgroundColor = self.currColor
                    }, completion: nil)
                print("Current Color: \(currColor) Previous Color: \(prevColor)")
                prevColor = currColor

        case "Purple":
                currColor = UIColor.purpleColor()
                println(currColor)
                pickerView.selectRow(row, inComponent: component, animated: true)
                UIView.animateWithDuration(1.5, animations: {
                    self.targetView?.backgroundColor = self.prevColor
                    self.targetView?.backgroundColor = self.currColor
                    }, completion: nil)
                print("Current Color: \(currColor) Previous Color: \(prevColor)")
                prevColor = currColor

            case "Orange":
                currColor = UIColor.orangeColor()
                pickerView.selectRow(row, inComponent: component, animated: true)
                UIView.animateWithDuration(1.5, animations: {
                    self.targetView?.backgroundColor = self.prevColor
                    self.targetView?.backgroundColor = self.currColor
                    }, completion: nil)
                print("Current Color: \(currColor) Previous Color: \(prevColor)")
                prevColor = currColor
            
            case "Light Gray":
                currColor = UIColor.lightGrayColor()
                println(currColor)
                pickerView.selectRow(row, inComponent: component, animated: true)
                UIView.animateWithDuration(1.5, animations: {
                    self.targetView?.backgroundColor = self.prevColor
                    self.targetView?.backgroundColor = self.currColor
                    }, completion: nil)
                print("Current Color: \(currColor) Previous Color: \(prevColor)")
                prevColor = currColor
            case "Gray":
                currColor = UIColor.grayColor()
                println(currColor)
                pickerView.selectRow(row, inComponent: component, animated: true)
                UIView.animateWithDuration(1.5, animations: {
                    self.targetView?.backgroundColor = self.prevColor
                    self.targetView?.backgroundColor = self.currColor
                    }, completion: nil)
                print("Current Color: \(currColor) Previous Color: \(prevColor)")
                prevColor = currColor
            case "Green":
                currColor = UIColor.greenColor()
                println(currColor)
                pickerView.selectRow(row, inComponent: component, animated: true)
                UIView.animateWithDuration(1.5, animations: {
                    self.targetView?.backgroundColor = self.prevColor
                    self.targetView?.backgroundColor = self.currColor
                    }, completion: nil)
                print("Current Color: \(currColor) Previous Color: \(prevColor)")
                prevColor = currColor

            case "Cyan":
                currColor = UIColor.cyanColor()
                println(currColor)
                pickerView.selectRow(row, inComponent: component, animated: true)
                UIView.animateWithDuration(1.5, animations: {
                    self.targetView?.backgroundColor = self.prevColor
                    self.targetView?.backgroundColor = self.currColor
                    }, completion: nil)
                print("Current Color: \(currColor) Previous Color: \(prevColor)")
                prevColor = currColor

            case "Brown":
                currColor = UIColor.brownColor()
                println(currColor)
                pickerView.selectRow(row, inComponent: component, animated: true)
                UIView.animateWithDuration(1.5, animations: {
                    self.targetView?.backgroundColor = self.prevColor
                    self.targetView?.backgroundColor = self.currColor
                    }, completion: nil)
                print("Current Color: \(currColor) Previous Color: \(prevColor)")
                prevColor = currColor

            case "Blue":
                currColor = UIColor.blueColor()
                println(currColor)
                pickerView.selectRow(row, inComponent: component, animated: true)
                UIView.animateWithDuration(1.5, animations: {
                    self.targetView?.backgroundColor = self.prevColor
                    self.targetView?.backgroundColor = self.currColor
                    }, completion: nil)
                print("Current Color: \(currColor) Previous Color: \(prevColor)")
                prevColor = currColor

            case "Black":
                currColor = UIColor.blackColor()
                println(currColor)
                pickerView.selectRow(row, inComponent: component, animated: true)
                UIView.animateWithDuration(1.5, animations: {
                    self.targetView?.backgroundColor = self.prevColor
                    self.targetView?.backgroundColor = self.currColor
                    }, completion: nil)
                print("Current Color: \(currColor) Previous Color: \(prevColor)")
                prevColor = currColor

            case "Clear":
                currColor = UIColor.clearColor()
                println(currColor)
                pickerView.selectRow(row, inComponent: component, animated: true)
                UIView.animateWithDuration(1.5, animations: {
                    self.targetView?.backgroundColor = self.prevColor
                    self.targetView?.backgroundColor = self.currColor
                    }, completion: nil)
                print("Current Color: \(currColor) Previous Color: \(prevColor)")
                prevColor = currColor

            default:
                return
            
        }
        
        
    }
 


}

