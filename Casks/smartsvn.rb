cask "smartsvn" do
  version "14.0.2"
  sha256 "4c7d9df6bb07bd422f082f36b0c5d44f590b7175065a09fa0f65e95967f8e77e"

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-macosx-#{version.dots_to_underscores}.dmg"
  appcast "https://www.smartsvn.com/documents/smartsvn/changelog.txt"
  name "SmartSVN"
  desc "Subversion client"
  homepage "https://www.smartsvn.com/"

  depends_on macos: ">= :el_capitan"

  app "SmartSVN.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsvn.plist",
    "~/Library/Preferences/SmartSVN",
    "~/Library/Saved Application State/com.syntevo.smartsvn.savedState",
  ]
end
