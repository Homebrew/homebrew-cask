cask "cold-turkey-blocker" do
  version "4.2.1"
  sha256 "745408cc07c761f8ecc58243adb4fad28be9a1a43e5922403432ab2e82e644ce"

  url "https://getcoldturkey.com/files/Cold_Turkey_Mac_Installer.pkg?v=#{version}"
  name "Cold Turkey"
  desc "Block websites, games and applications"
  homepage "https://getcoldturkey.com/"

  livecheck do
    url "https://getcoldturkey.com/download/mac/"
    strategy :page_match
    regex(/Cold_Turkey_Mac_Installer\.pkg\?v=(\d+(?:\.\d+)*)/i)
  end

  pkg "Cold_Turkey_Blocker.pkg"

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
