cask "handyprintpro" do
  version "5.5.0"
  sha256 "dad7a37fd2f20bf5c466061914517bbea70e2d7d1fc6f2d18b48a6766684204c"

  url "https://s3.amazonaws.com/netputing/handyPrintPRO/handyPrintPRO+v#{version}.dmg",
      verified: "s3.amazonaws.com/netputing/handyPrintPRO/"
  name "handyPrintPRO"
  desc "AirPrint server"
  homepage "http://www.netputing.com/handyprintpro/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/handyPrintPRO\+v(\d+(?:\.\d+)+)\.dmg}i)
  end

  pkg "handyPrintProInstaller.pkg"

  uninstall launchctl: "com.netputing.handyPrintProDaemon",
            quit:      "com.netputing.handyPrintPro",
            pkgutil:   [
              "com.netputing.handyPrintPro",
              "com.netputing.handyPrintProDaemon",
              "com.netputing.handyPrintProLaunchd",
            ]

  zap trash: [
    "/Library/Application Support/handyPrintPro",
    "~/Library/Caches/com.netputing.handyPrintPro",
    "~/Library/Logs/handyPrintPro",
    "~/Library/Preferences/com.netputing.handyPrintPro.plist",
    "~/Library/Preferences/us.handheldmedia.HandyPrintProStatus.plist",
    "~/Library/Saved Application State/com.netputing.handyPrintPro.savedState",
  ]
end
