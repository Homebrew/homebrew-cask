cask "0xed" do
  version "1.1.4"
  sha256 "b5e5845641964c2c1d481b15962e842c1b8176a2292c37b6f3790155e1fafcee"

  url "https://www.suavetech.com/download/0xED-#{version}.tar.bz2"
  appcast "https://www.suavetech.com/0xed/history.html"
  name "0xED"
  desc "Hex editor"
  homepage "https://www.suavetech.com/0xed/"

  app "0xED.app"

  zap trash: [
    "~/Library/Caches/com.suavetech.0xED",
    "~/Library/Logs/0xED.log",
    "~/Library/Preferences/com.suavetech.0xED.plist",
    "~/Library/Saved Application State/com.suavetech.0xED.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.suavetech.0xed.sfl2",
  ]
end
