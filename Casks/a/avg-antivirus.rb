cask "avg-antivirus" do
  version "4.0,2.0"
  sha256 :no_check

  url "https://bits.avcdn.net/productfamily_ANTIVIRUS/insttype_FREE/platform_MAC_AVG/installertype_ONLINE/build_RELEASE",
      verified: "bits.avcdn.net/"
  name "AVG Antivirus for Mac"
  desc "Antivirus software"
  homepage "https://www.avg.com/us-en/avg-antivirus-for-mac"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "AVG AntiVirus.pkg"

  uninstall launchctl: [
              "com.avg.hub",
              "com.avg.hub.schedule",
              "com.avg.hub.xpc",
            ],
            script:    {
              executable: "/Applications/AVGAntivirus.app/Contents/Backend/hub/uninstall.sh",
              sudo:       true,
            },
            pkgutil:   "com.avg.pkg.hub"

  zap trash: [
    "/Library/Application Support/AVGAntivirus",
    "/Library/Application Support/AVGHUB",
    "~/Library/Application Support/AVGAntivirus",
    "~/Library/Application Support/AVGHUB",
    "~/Library/Logs/AVGHUB",
  ]
end
