cask "swiftformat-for-xcode" do
  version "0.49.0"
  sha256 "e5fd0e608f7a79d98d617707dad02de8fcb1817810dfb5e309815aa92229d0f0"

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
