cask "synology-cloud-station-backup" do
  version "4.3.3,4469"
  sha256 "1759be61a09cacd976969f71b0c0f12f34684976de6ad98323c512aec8f3399d"

  url "https://global.download.synology.com/download/Tools/CloudStationBackup/#{version.csv.first}-#{version.csv.second}/Mac/Installer/synology-cloud-station-backup-#{version.csv.second}.dmg"
  name "Synology Cloud Station Backup"
  desc "Back up files to a centralized Synology NAS"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/CloudStationBackup"
    regex(/Version:\s*(\d+(?:\.\d+)+)-(\d+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

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
