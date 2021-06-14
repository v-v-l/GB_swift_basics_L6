//
//  main.swift
//  GB_swift_basics_L6
//
//  Created by Victor Lipov on 14.06.2021.
//

import Foundation

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)

//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.


struct genericQueue<T: Comparable> {
    var elements = [T]()
    
    mutating func append(_ element: T) {
        elements.append(element)
        print("Element \(element) added to queue.")
    }
    
    mutating func remove() -> T {
        print("Element \(elements.first!) is next")
        return elements.removeFirst()
    }
    
    func filter(item: T) {
        print("Find \(elements.filter{ $0 == item })")
    }

    mutating func elementsSort() -> [T] {
        return elements.sorted(by: > )
    }
    
    subscript (index: Int) -> T? {
        return (index < elements.count ? elements[index] : nil)
    }
}

var myQueue = genericQueue<Int>()

myQueue.append(22)
myQueue.append(2)
myQueue.append(13)
myQueue.append(5)
myQueue.append(10)


print(myQueue)




