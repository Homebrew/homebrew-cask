cask "swiftformat-for-xcode" do
  version "0.47.1"
  sha256 "cee503b3ec94c520f9dce8fe2d810570aa11d3e22040bca10765edb016971cc5"

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
