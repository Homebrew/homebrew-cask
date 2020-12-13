cask "ipe" do
  version "7.2.21"
  sha256 "41601c87a8cf3d21c847a84ccfaab53be0c2df17872cc512e13c08f14955cf58"

  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipe-#{version}-mac.dmg",
      verified: "bintray.com/otfried/"
  appcast "http://ipe.otfried.org/"
  name "Ipe"
  desc "Drawing editor for creating figures in PDF format"
  homepage "http://ipe.otfried.org/"

  depends_on macos: ">= :yosemite"

  app "Ipe.app"

  zap trash: [
    "~/.ipe",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.ipe.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.otfried.ipe.sfl*",
    "~/Library/Preferences/org.otfried.ipe.Ipe.plist",
    "~/Library/Saved Application State/org.otfried.ipe.savedState",
  ]
end
