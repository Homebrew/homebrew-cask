cask "swiftformat-for-xcode" do
  version "0.53.3"
  sha256 "4fc786936fd0e9e6391b1e3af19216d014e387d9c746016f08a371f1fa9edc9b"

  url "https://github.com/nicklockwood/SwiftFormat/releases/download/#{version}/SwiftFormat.for.Xcode.zip"
  name "SwiftFormat for Xcode"
  desc "Xcode Extension for reformatting Swift code"
  homepage "https://github.com/nicklockwood/SwiftFormat"

  depends_on macos: ">= :mojave"

  app "SwiftFormat for Xcode.app"

  zap trash: [
    "~/Library/Application Scripts/com.charcoaldesign.SwiftFormat-for-Xcode",
    "~/Library/Application Scripts/com.charcoaldesign.SwiftFormat-for-Xcode.SourceEditorExtension",
    "~/Library/Containers/com.charcoaldesign.SwiftFormat-for-Xcode",
    "~/Library/Group Containers/com.charcoaldesign.SwiftFormat",
  ]
end
