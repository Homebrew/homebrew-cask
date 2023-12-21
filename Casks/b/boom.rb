cask "boom" do
  version "1.7.11,101.7.11015"
  sha256 :no_check

  url "https://d13nae1tw8tdnq.cloudfront.net/Boom2mac/webstore/Boom2.dmg",
      verified: "d13nae1tw8tdnq.cloudfront.net/Boom2mac/"
  name "Boom"
  desc "Transforms audio input"
  homepage "https://www.globaldelight.com/boom2/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Boom 2.app"

  uninstall launchctl: "com.globaldelight.Boom2Daemon",
            signal:    ["TERM", "com.globaldelight.Boom2"],
            kext:      "com.globaldelight.driver.Boom2Device"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom2.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.globaldelight.boom2daemon.sfl*",
    "~/Library/Application Support/com.globaldelight.Boom2",
    "~/Library/Preferences/com.globaldelight.Boom2.plist",
    "~/Library/Preferences/com.globaldelight.Boom2Daemon.plist",
  ]
end
