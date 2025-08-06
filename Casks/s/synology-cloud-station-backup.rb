cask "synology-cloud-station-backup" do
  version "4.3.3,4469"
  sha256 "1759be61a09cacd976969f71b0c0f12f34684976de6ad98323c512aec8f3399d"

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version.csv.first}-#{version.csv.second}/Mac/Installer/synology-cloud-station-backup-#{version.csv.second}.dmg"
  name "Synology Cloud Station Backup"
  desc "Back up files to a centralised Synology NAS"
  homepage "https://www.synology.com/"

  deprecate! date: "2024-10-08", because: :discontinued

  auto_updates true

  pkg "Install Cloud Station Backup.pkg"

  uninstall launchctl: "com.synology.Synology Cloud Station Backup",
            quit:      [
              "com.synology.CloudStationBackup",
              "com.synology.CloudStationBackupUI",
            ],
            pkgutil:   [
              "com.synology.CloudStationBackup",
              "com.synology.CloudStationBackupUI",
            ]

  zap trash: "~/Library/Preferences/com.synology.CloudStationBackupUI.plist"
end
