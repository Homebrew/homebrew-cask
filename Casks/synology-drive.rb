cask "synology-drive" do
  version "3.2.1,13272"
  sha256 "a0da3fd858a6eb7c625a256e63df50d7c74738f1f275026bec2f6d89bf0b2ce1"

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
            ],
            delete:    "/Applications/Synology Drive Client.app"
end
