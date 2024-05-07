cask "synology-photo-station-uploader" do
  version "1.4.6,098"
  sha256 "6969aa9d75e8b8a57e64db6ff81e9fc8826c5a08432ccea7713b589cad9f7895"

  url "https://global.download.synology.com/download/Utility/PhotoStationUploader/#{version.csv.first}-#{version.csv.second}/Mac/SynologyPhotoStationUploader-#{version.csv.second}-Mac-Installer.dmg"
  name "Synology Photo Station Uploader"
  desc "Bulk upload photos and videos to Synology Photo Station"
  homepage "https://www.synology.com/"

  disable! date: "2024-05-07", because: :no_longer_available
end
