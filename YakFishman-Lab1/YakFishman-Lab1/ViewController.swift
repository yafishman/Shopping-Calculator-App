//
//  ViewController.swift
//  YakFishman-Lab1
//
//  Created by Yak Fishman on 9/7/18.
//  Copyright © 2018 Yak Fishman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet weak var nItemBox: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBAction func addItem(_ sender: Any) {
        oNewPrice += finalPriceO!
        oPriceNew.text = "$\(String(format: "%.2f", oNewPrice))"
        update()
    }
    @IBOutlet weak var nItem: UILabel!
    var oNewPrice = 0.0
    @IBOutlet weak var oPriceL: UILabel!
    @IBOutlet weak var oPriceBox: UITextField!
    var originalPrice = 0.0
    @IBAction func oBoxAct(_ sender: Any) {
        update()
    }
    @IBOutlet weak var oPriceNew: UILabel!
    @IBOutlet weak var perentL: UILabel!
    @IBOutlet weak var percentBox: UITextField!
    var percentDiscount = 0.0
    @IBAction func percentAct(_ sender: Any) {
        update()
    }
    @IBOutlet weak var taxL: UILabel!
    @IBOutlet weak var taxBox: UITextField!
    var salesTax = 0.0
    @IBAction func taxAct(_ sender: Any) {
        update()
    }
    @IBOutlet weak var fPriceL: UILabel!
    @IBOutlet weak var fPriceBox: UILabel!
    var finalPriceO: Double?
    var finalPriceN: Double?
    func update() {
        if(oPriceBox.text == "" || Double(oPriceBox.text!) == nil) {
            originalPrice = 0.00
        } else {
            originalPrice = Double (oPriceBox.text!)!
        }
        if(percentBox.text == "" || Double(percentBox.text!) == nil) {
            // || percentBox.keyboardType != UIKeyboardType.numberPad
            percentDiscount = 0.0
        } else {
            percentDiscount = Double (percentBox.text!)!
        }
        if(taxBox.text == "" || Double(taxBox.text!) == nil) {
            salesTax = 0.0
        }else {
            salesTax = Double (taxBox.text!)!
        }
        finalPriceO = originalPrice-(originalPrice*percentDiscount/100) + ((originalPrice-originalPrice*percentDiscount/100)*salesTax/100)
        if(finalPriceO! < 0.0) {
            finalPriceO = 0.0
        }
       fPriceBox.text = "$\(String(format: "%.2f", finalPriceO!))"
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

