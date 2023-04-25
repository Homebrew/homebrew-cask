cask "synology-drive" do
  version "3.3.0,15082"
  sha256 "7719a9077d598ced6e02701b635dce8d547cd420832dff6f242db489968f649e"

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

  uninstall quit:      [
              "io.com.synology.CloudStationUI",
              "com.synology.CloudStation",
              "com.synology.CloudStationUI",
              "com.synology.SynologyDrive.FinderHelper",
            ],
            pkgutil:   "com.synology.CloudStation",
            launchctl: [
              "com.synology.Synology Cloud Station",
              "application.com.synology.CloudStationUI*",
              "application.com.synology.CloudStationUI.*",
            ],
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
