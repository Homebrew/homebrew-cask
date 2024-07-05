cask "idrive" do
  version "3.5.10.80,070624"
  sha256 "231518ded3b6273e56ae68c98bfb068d90c6a7e836fa761f29ad8d402d243714"

  url "https://static.idriveonlinebackup.com/downloads/#{version.csv.second}/IDrive.dmg",
      verified: "static.idriveonlinebackup.com/downloads/"
  name "iDrive"
  desc "Cloud backup and storage solution"
  homepage "https://www.idrive.com/"

  livecheck do
    url "https://static.idriveonlinebackup.com/downloads/version_mac.js"
    strategy :page_match do |page|
      version = page.match(/Version:?\s*(\d+(?:\.\d+)*)/i)
      next if version.blank?

      download_id = page.match(%r{downloads/(\w+)/}i)
      next if download_id.blank?

      "#{version[1]},#{download_id[1]}"
    end
  end

  pkg "IDrive.pkg"

  uninstall launchctl: [
              "com.iDrive.FinderPluginApp",
              "com.prosoftnet.DaemonHelper",
              "IDriveDaemon",
              "IDSyncDaemon",
              "IDWifiManager",
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
