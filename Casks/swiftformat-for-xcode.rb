cask "swiftformat-for-xcode" do
  version "0.47.10"
  sha256 "7e57c26e174f8b8cf960eea436c93e38fc432a8f7730f47338681b2f40af1775"

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
