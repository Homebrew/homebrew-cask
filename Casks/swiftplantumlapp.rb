cask "swiftplantumlapp" do
  version "1.4.1"
  sha256 "4edf29cbaa1a49400a308af29c878cc00f04e616ceb58aa70b20c41c76ed05db"

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
