cask "swiftformat-for-xcode" do
  version "0.47.5"
  sha256 "811e24671f8431cb65b8774fb445065af35f0b8c78dbbd6e591eedfb78d257d2"

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
