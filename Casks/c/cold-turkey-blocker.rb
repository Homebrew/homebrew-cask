cask "cold-turkey-blocker" do
  version "4.4,1"
  sha256 :no_check

  url "https://getcoldturkey.com/files/Cold_Turkey_Mac_Installer.pkg"
  name "Cold Turkey"
  desc "Block websites, games and applications"
  homepage "https://getcoldturkey.com/"

  livecheck do
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
end
