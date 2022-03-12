cask "swiftplantumlapp" do
  version "1.3.0"
  sha256 "2a1a48c608b30667671f4111f1d38455a6291210604d81ca70ef4a5f02823f5e"

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
