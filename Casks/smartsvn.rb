cask "smartsvn" do
  version "14.0.1"
  sha256 "743fa455562765ced91bcc82362d36154bbeb7c5c68c37991f7009a8095c567a"

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
