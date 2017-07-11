//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    
    // 2.
    func names (forFlavor flavor:String) -> [String] {
        var listOfPeople: [String] = [String]()
        for (key, value) in favoriteFlavorsOfIceCream {
            if value.contains(flavor) {
                listOfPeople.append(key)
            }
        }
        
        return listOfPeople
    }

    
    // 3.
    func count(forFlavor flavor:String) -> Int {
        var cnt: Int = 0
        for (_, value) in favoriteFlavorsOfIceCream {
            if value.contains(flavor) {
                cnt += 1
            }
        }
        return cnt
    }
    
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        for (key, value) in favoriteFlavorsOfIceCream {
            if key == person {
                return value
            }
        }
        return nil
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor: String, person: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[person] {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
        return false
    }
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream.removeValue(forKey: person) {
            return true
        }
        return false
    }
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person:String, withFlavor flavor: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[person] {
            return false
        } else {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            return true
        }
    }
    
    
    // 9.
    func attendeeList() -> String {
        var output: String = ""
        var i = 1
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for name in allNames {
            output += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            if i < allNames.count {
                output += "\n"
                i += 1
            }
            
        }
        return output
    }

}
