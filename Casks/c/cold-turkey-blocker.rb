cask "cold-turkey-blocker" do
  version "4.7"
  sha256 :no_check

  url "https://getcoldturkey.com/files/Cold_Turkey_Mac_Installer.pkg"
  name "Cold Turkey"
  desc "Block websites, games and applications"
  homepage "https://getcoldturkey.com/"

  livecheck do
    url "https://getcoldturkey.com/news/"
    regex(/Blocker\s*v?(\d+(?:\.\d+)+)/i)
  end

  pkg "Cold_Turkey_Mac_Installer.pkg"

  uninstall launchctl: [
              "com.getcoldturkey.blocker.agent",
              "launchkeep.cold-turkey",
              "launchkeep.cold-turkey-all-users",
            ],
            pkgutil:   [
              "com.getcoldturkey.blocker-chrome-ext",
              "com.getcoldturkey.blocker-edge-ext",
              "com.getcoldturkey.blocker-firefox-ext",
              "com.getcoldturkey.coldturkeyblocker",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.getcoldturkey.blocker-shared-data",
    "~/Library/Caches/com.getcoldturkey.blocker",
    "~/Library/Group Containers/com.getcoldturkey.blocker-shared-data",
    "~/Library/HTTPStorages/com.getcoldturkey.blocker",
    "~/Library/Preferences/com.getcoldturkey.blocker.plist",
    "~/Library/WebKit/com.getcoldturkey.blocker",
  ]

  caveats do
    requires_rosetta
  end
end
