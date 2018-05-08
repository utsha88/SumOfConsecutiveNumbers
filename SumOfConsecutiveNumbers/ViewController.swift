//
//  ViewController.swift
//  SumOfConsecutiveNumbers
//
//  Created by Utsha Guha on 7-5-18.
//  Copyright © 2018 Utsha Guha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count2:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let result = self.consecutiveNumbersSum(5809986)
        print(result)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func consecutiveNumbersSum(_ N: Int) -> Int {
        var count1:Int = 0
        var count2:Int = 0
        for j in 1..<N{
            for i in j..<N{
                if count1<N {
                    count1 += i
                }
                else if count1 == N {
                    count2 += 1
                    count1 = 0
                    break
                }
                else{
                    count1 = 0
                    break
                }
            }
        }
        return count2+1
    }

}

