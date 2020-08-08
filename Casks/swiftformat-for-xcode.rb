cask "swiftformat-for-xcode" do
  version "0.45.4"
  sha256 "0445a10083f422b812def5f59c03560892ff9744118581a39d7fa96af04d0679"

  url "https://github.com/nicklockwood/SwiftFormat/archive/#{version}.zip"
  appcast "https://github.com/nicklockwood/SwiftFormat/releases.atom"
  name "SwiftFormat for Xcode"
  homepage "https://github.com/nicklockwood/SwiftFormat"

  depends_on macos: ">= :sierra"

  app "SwiftFormat-#{version}/EditorExtension/SwiftFormat for Xcode.app"

  zap trash: [
    "~/Library/Application Scripts/com.charcoaldesign.SwiftFormat-for-Xcode",
    "~/Library/Application Scripts/com.charcoaldesign.SwiftFormat-for-Xcode.SourceEditorExtension",
    "~/Library/Containers/com.charcoaldesign.SwiftFormat-for-Xcode",
    "~/Library/Group Containers/com.charcoaldesign.SwiftFormat",
  ]
end
