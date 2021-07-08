cask "swiftformat-for-xcode" do
  version "0.48.7"
  sha256 "bd62918fa047c58deddf68604a0865644f25a1bfec008588d0ae4a2a2208e5e5"

  url "https://github.com/nicklockwood/SwiftFormat/archive/#{version}.zip"
  name "SwiftFormat for Xcode"
  desc "Xcode Extension for reformatting Swift code"
  homepage "https://github.com/nicklockwood/SwiftFormat"

  depends_on macos: ">= :mojave"

  app "SwiftFormat-#{version}/EditorExtension/SwiftFormat for Xcode.app"

  zap trash: [
    "~/Library/Application Scripts/com.charcoaldesign.SwiftFormat-for-Xcode",
    "~/Library/Application Scripts/com.charcoaldesign.SwiftFormat-for-Xcode.SourceEditorExtension",
    "~/Library/Containers/com.charcoaldesign.SwiftFormat-for-Xcode",
    "~/Library/Group Containers/com.charcoaldesign.SwiftFormat",
  ]
end
