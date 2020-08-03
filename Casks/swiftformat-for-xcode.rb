cask "swiftformat-for-xcode" do
  version "0.45.3"
  sha256 "c2d4ff08fdb5aa4026d4f2839a6f72bf1e5accac3857c7165c85ccf4a36d76c2"

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
