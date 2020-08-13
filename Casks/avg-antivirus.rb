cask "avg-antivirus" do
  version :latest
  sha256 :no_check

  # s-install.avcdn.net/mac-av/ was verified as official when first introduced to the cask
  url "https://s-install.avcdn.net/mac-av/10_10/AAVG/avg_mac_security_online.dmg"
  name "AVG Antivirus for Mac"
  homepage "https://www.avg.com/us-en/avg-antivirus-for-mac"

  pkg "Install AVG AntiVirus.pkg"

  uninstall script:    {
    executable: "/Applications/AVGAntivirus.app/Contents/Backend/utils/com.avg.uninstall.app/Contents/Resources/uninstall.sh",
    sudo:       true,
  },
            pkgutil:   "com.avg.pkg.hub",
            launchctl: [
              "com.avg.hub",
              "com.avg.hub.schedule",
              "com.avg.hub.xpc",
            ]

  zap trash: [
    "/Library/Application Support/AVGAntivirus",
    "/Library/Application Support/AVGHUB",
    "~/Library/Application Support/AVGAntivirus",
    "~/Library/Application Support/AVGHUB",
    "~/Library/Logs/AVGHUB",
  ]
end
