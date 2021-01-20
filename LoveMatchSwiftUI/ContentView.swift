//
//  ContentView.swift
//  LoveMatchSwiftUI
//
//  Created by Jorge Giannotta on 20/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var namePartner1 : String = ""
    @State var namePartner2 : String = ""
    @State var percentage : Int = 0
    
    @State var result : String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            
            Text("Love Match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color("ColorWhite"))
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 5, content: {
                Image(systemName: "person")
                TextField(" First Partner", text: $namePartner1)
                    .foregroundColor(Color("ColorWhite"))
                    .frame(height: 50, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 5).stroke(Color("ColorPinkDark"),lineWidth: 3)
                    )
            })//: HStack
            .padding(.horizontal)
            .padding(.vertical)
            
            HStack(alignment: .center, spacing: 5, content: {
                Image(systemName: "person")
                TextField(" Second Partner", text: $namePartner2)
                    .foregroundColor(Color("ColorWhite"))
                    .frame(height: 50, alignment: .center)
                    .background(
                        RoundedRectangle(cornerRadius: 5).stroke(Color("ColorPinkDark"),lineWidth: 3)
                    )
            })//: HStack
            .padding(.horizontal)
            
            Spacer()
            
            Text(result)
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color("ColorWhite"))
            
            Spacer()
            
            Button(action: {
                percentage = Int.random(in: 0...100)
                
                if (namePartner1 != "" || namePartner2 != "") {
                    result = "The Compatibility between \(namePartner1) & \(namePartner2) is \(percentage)%"
                }else {
                    result = "Please enter the names"
                }
                
            }, label: {
                Text("Button")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorWhite"))
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color("ColorPinkDark"))
                            .frame(width: 150, height: 50, alignment: .center)
                    )
            })
            .padding()
            
            Spacer()
            
        })//: VStack
        .background(Color("ColorPink"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
