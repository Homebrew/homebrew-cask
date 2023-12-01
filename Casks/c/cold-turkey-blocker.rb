cask "cold-turkey-blocker" do
  version "4.5"
  sha256 :no_check

  url "https://getcoldturkey.com/files/Cold_Turkey_Mac_Installer.pkg"
  name "Cold Turkey"
  desc "Block websites, games and applications"
  homepage "https://getcoldturkey.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "Cold_Turkey_Mac_Installer.pkg"

  uninstall launchctl: [
              "launchkeep.cold-turkey",
              "launchkeep.cold-turkey-all-users",
            ],
            pkgutil:   [
              "com.getcoldturkey.coldturkeyblocker",
              "com.getcoldturkey.blocker-chrome-ext",
              "com.getcoldturkey.blocker-edge-ext",
              "com.getcoldturkey.blocker-firefox-ext",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.getcoldturkey.blocker-shared-data",
    "~/Library/Caches/com.getcoldturkey.blocker",
    "~/Library/Group Containers/com.getcoldturkey.blocker-shared-data",
    "~/Library/HTTPStorages/com.getcoldturkey.blocker",
    "~/Library/Preferences/com.getcoldturkey.blocker.plist",
    "~/Library/WebKit/com.getcoldturkey.blocker",
  ]
end
