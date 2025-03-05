
/*
 *
 * Inheritance: A way to create new classes using existing classes.
 *
 * If your app has different types of objects that share some common features
 * but also have unique ones, use inheritance.
 *
 * Instead of repeating the same code for each object, create a main (parent) class
 * with shared properties and behaviors. Then, make smaller (child) classes that inherit
 * from the parent but also have their own special properties and behaviors.
 * This keeps your code organized and avoids duplication.
 *
 * The relationship between a subclass and its parent class follows an "is-a"
 * relationship. This means the subclass is a specific type of the parent class.
 * For example, a "Dog" is a specific type of "Animal".
 * Here, Animal is the parent class, and Dog is the subclass.
 * Since a dog is a type of animal, the Dog class inherits common properties
 * (like breathing, eating, and sleeping) from Animal while also having its
 * own unique traits (like barking or wagging its tail).
 *
 * In Swift, you can create a subclass by adding a colon (:) after the subclass name
 * followed by the parent class name.
 */




import Cocoa

class MuseumObject {
    var title: String
    var year: Int

    init(title:String, year:Int){
        self.title = title
        self.year = year
    }

}

class Painting: MuseumObject {
    var artistDisplayName: String

    init(title: String, year: Int, artistDisplayName: String) {
        self.artistDisplayName = artistDisplayName
        super.init(title: title, year: year) // Call parent class initializer
    }
}

class Ceramics: MuseumObject {
    var region: String

    init(title: String, year: Int, region: String){
        self.region = region
        super.init(title: title, year:year)
    }
}

let painting = Painting(title: "Starry Night", year: 1889, artistDisplayName: "Vincent Van Gogh")
let ceramic = Ceramics(title: "Blue on White", year: 1920, region: "China")

print("\(painting.title) by \(painting.artistDisplayName), created in \(painting.year)")
print("\(ceramic.title) from \(ceramic.region), created in \(ceramic.year)")

