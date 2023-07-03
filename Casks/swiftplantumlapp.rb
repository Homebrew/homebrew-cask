cask "swiftplantumlapp" do
  version "1.5.1"
  sha256 "0c2643219c9b5982592ce103f0824e2c36b501259e40b7e9b8114c37ddd091aa"

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
