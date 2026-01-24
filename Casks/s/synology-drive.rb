cask "synology-drive" do
  version "4.0.2,17889"
  sha256 "280a1cdf56364531eeed15a00bad5baeda1e151d5cfa9362e0e76e6f6247adf4"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version.tr(",", "-")}/Mac/Installer/synology-drive-client-#{version.csv.second}.dmg"
  name "Synology Drive"
  desc "Sync and backup service to Synology NAS drives"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://www.synology.com/api/releaseNote/findChangeLog?identify=SynologyDriveClient&lang=en-us"
    strategy :json do |json|
      json.dig("info", "versions", "", "all_versions")&.map { |item| item["version"]&.tr("-", ",") }
    end
  end

  auto_updates true

  pkg "Install Synology Drive Client.pkg"

  uninstall launchctl: [
              "application.com.synology.CloudStationUI*",
              "com.synology.Synology Cloud Station",
            ],
            quit:      [
              "com.synology.CloudStation",
              "com.synology.SynologyDrive.FinderHelper",
              "io.com.synology.CloudStationUI",
            ],
            signal:    [
              ["TERM", "com.synology.SynologyDrive.CloudStationUI"],
              ["TERM", "com.synology.SynologyDrive.FinderHelper.FinderSync"],
            ],
            pkgutil:   "com.synology.CloudStation",
            delete:    "/Applications/Synology Drive Client.app"

  zap trash: [
    "~/Library/Application Scripts/com.synology.CloudStationUI.FileProvider",
    "~/Library/Application Scripts/com.synology.SynologyDrive.FinderHelper*",
    "~/Library/Application Scripts/group.com.synology.CloudStationUI",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.synology.synologydrive.finderhelper.sfl*",
    "~/Library/Application Support/FileProvider/com.synology.CloudStationUI.FileProvider",
    "~/Library/Application Support/SynologyDrive",
    "~/Library/Containers/com.synology.CloudStationUI.FileProvider",
    "~/Library/Containers/com.synology.SynologyDrive*",
    "~/Library/Group Containers/group.com.synology.CloudStationUI",
    "~/Library/Preferences/com.synology.CloudStationUI.plist",
  ]
end
