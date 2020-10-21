cask "smartsvn" do
  version "14.0.0"
  sha256 "637cf6ee156c9dd8c9a2db1ad21b9cff324cc505f125a6a1a235b009a358337b"

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-macosx-#{version.dots_to_underscores}.dmg"
  appcast "https://www.smartsvn.com/documents/smartsvn/changelog.txt"
  name "SmartSVN"
  homepage "https://www.smartsvn.com/"

  app "SmartSVN #{version.major}.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsvn.plist",
    "~/Library/Preferences/SmartSVN",
    "~/Library/Saved Application State/com.syntevo.smartsvn.savedState",
  ]
end
