cask "cold-turkey-blocker" do
  version "4.2.1"
  sha256 :no_check

  url "https://getcoldturkey.com/files/Cold_Turkey_Mac_Installer.pkg?v=#{version}"
  name "Cold Turkey"
  homepage "https://getcoldturkey.com/"

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
