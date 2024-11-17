cask "swiftformat-for-xcode" do
  version "0.55.0"
  sha256 "35aaab2f8990687285e7f771cc0d588577eed9df9f3cb671b19bc045df268587"

  url "https://github.com/nicklockwood/SwiftFormat/releases/download/#{version}/SwiftFormat.for.Xcode.app.zip"
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
