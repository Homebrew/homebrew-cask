cask "idrive" do
  version "3.5.10.65"
  sha256 :no_check

  url "https://www.idrive.com/downloads/IDrive.dmg"
  name "iDrive"
  desc "Cloud backup and storage solution"
  homepage "https://www.idrive.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "IDrive.pkg"

  uninstall launchctl: [
              "IDSyncDaemon",
              "IDWifiManager",
              "IDriveDaemon",
            ],
            quit:      [
              "com.prosfotnet.IDWifiManager",
              "com.prosoftnet.IDrive",
              "com.prosoftnet.IDriveDaemon",
              "com.prosoftnet.IDriveMonitor",
            ],
            pkgutil:   "com.profsoftnet.idrive.*"

  zap trash: [
    "/Library/Application Support/IDriveforMac",
    "~/Library/Application Support/IDriveforMac",
    "~/Library/Caches/com.prosoftnet.IDriveMonitor",
    "~/Library/Preferences/com.prosoftnet.IDrive.plist",
    "~/Library/Preferences/com.prosoftnet.IDriveMonitor.plist",
  ]
end
