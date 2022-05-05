cask "jandi" do
  version "1.4.6,201106"
  sha256 :no_check

  url "https://cdn.jandi.com/jandi-pc/download/JANDI.dmg"
  name "JANDI"
  desc "Desktop app for the JANDI collaboration platform"
  homepage "https://www.jandi.com/landing/"

  app "JANDI.app"

  uninstall quit: "com.jandi.osx.JANDI"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jandi.osx.jandi.sfl*",
    "~/Library/Application Support/JANDI",
    "~/Library/Application Support/com.jandi.osx.JANDI.ShipIt",
    "~/Library/Caches/com.jandi.osx.JANDI",
    "~/Library/Preferences/com.jandi.osx.JANDI.plist",
    "~/Library/Saved Application State/com.jandi.osx.JANDI",
  ]
end
