cask "swiftplantumlapp" do
  version "1.5.0"
  sha256 "6e772df2384ad0ae7e16f6ed6d2d097e678afa0b2fc31030df6d1d399e8c9d01"

  url "https://github.com/MarcoEidinger/SwiftPlantUML-Xcode-Extension/releases/download/#{version}/SwiftPlantUMLApp.zip"
  name "swiftplantumlapp"
  desc "Generate and view a class diagram for Swift code in Xcode"
  homepage "https://github.com/MarcoEidinger/SwiftPlantUML-Xcode-Extension"

  app "SwiftPlantUMLApp.app"

  zap trash: [
    "~/Library/Application Scripts/us.eidinger.SwiftPlantUML",
    "~/Library/Application Scripts/us.eidinger.SwiftPlantUMLSourceEditorExtension",
    "~/Library/Containers/us.eidinger.SwiftPlantUML",
    "~/Library/Group Containers/us.eidinger.SwiftPlantUMLSourceEditorExtension",
  ]
end
