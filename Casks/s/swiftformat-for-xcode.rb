cask "swiftformat-for-xcode" do
  version "0.54.5"
  sha256 "8d2bc8258947932cf92e2d6045443693162e46fed8059b73c51eee53a17bdf1f"

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
