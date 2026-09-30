cask "synology-drive" do
  version "4.0.3,17892"
  sha256 "f99240eebd31621a6eeb5e08d66a882c27d837ff1875d1308168259a6a5f07ea"

  url "https://global.download.synology.com/download/Utility/SynologyDriveClient/#{version.tr(",", "-")}/Mac/Installer/synology-drive-client-#{version.csv.second}.dmg"
  name "Synology Drive"
  desc "Sync and backup service to Synology NAS drives"
  homepage "https://www.synology.com/"

  # The release notes also list builds for DSM Enterprise, which are not
  # compatible with regular DSM, so check the downloads for a regular DSM model
  livecheck do
    url "https://www.synology.com/api/support/findDownloadInfo?lang=en-us&product=DS923%2B"
    strategy :json do |json|
      json.dig("info", "utilities", "detail")&.map do |group|
        group["items"]&.map do |item|
          next if item["identify"] != "SynologyDriveClient"
          next if item.dig("files", "Mac").blank?

          item["version"]&.tr("-", ",")
        end
      end&.flatten
    end
  end

  auto_updates true
  depends_on :macos

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
