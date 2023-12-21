cask "synology-drive" do
  version "3.4.0,15724"
  sha256 "eb99997916071a5fa7f53793c7b6f146b18f8dc66257d525c9f7026771b03a11"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version.csv.first}-#{version.csv.second}/Mac/Installer/synology-drive-client-#{version.csv.second}.dmg"
  name "Synology Drive"
  desc "Sync and backup service to Synology NAS drives"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/en-us/releaseNote/SynologyDriveClient"
    regex(/>\s*Version:\s*(\d+(?:\.\d+)+)-(\d+)\s*</i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true

  pkg "Install Synology Drive Client.pkg"

  uninstall launchctl: [
              "application.com.synology.CloudStationUI*",
              "com.synology.Synology Cloud Station",
            ],
            quit:      [
              "io.com.synology.CloudStationUI",
              "com.synology.CloudStation",
              "com.synology.CloudStationUI",
              "com.synology.SynologyDrive.FinderHelper",
            ],
            pkgutil:   "com.synology.CloudStation",
            delete:    "/Applications/Synology Drive Client.app"

  zap trash: [
    "~/Library/Application Scripts/com.synology.CloudStationUI.FileProvider",
    "~/Library/Application Scripts/com.synology.SynologyDrive.FinderHelper*",
    "~/Library/Application Scripts/group.com.synology.CloudStationUI",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.synology.synologydrive.finderhelper.sfl2",
    "~/Library/Application Support/FileProvider/com.synology.CloudStationUI.FileProvider",
    "~/Library/Application Support/SynologyDrive",
    "~/Library/Containers/com.synology.CloudStationUI.FileProvider",
    "~/Library/Containers/com.synology.SynologyDrive*",
    "~/Library/Group Containers/group.com.synology.CloudStationUI",
    "~/Library/Preferences/com.synology.CloudStationUI.plist",
  ]
end
