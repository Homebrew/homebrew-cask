cask "ipe" do
  version "7.2.20"
  sha256 "cb2730de1f3e831ddb05c33e16fa4365e6605685ee8b940d698ca59c4699627e"

  # bintray.com/otfried/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipe-#{version}-mac.dmg"
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
