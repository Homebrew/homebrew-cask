cask "get-backup-pro" do
  version "3.6.1"
  sha256 "89a26c8b83ed621761a051eab879ebb3afdb0bfb1d16efc371b6b06d370986f1"

  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip",
      verified: "belightsoft.s3.amazonaws.com/updates/"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
  name "Get Backup Pro #{version.major}"
  desc "Backup software with folder synchronization"
  homepage "https://www.belightsoft.com/products/getbackup/"

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
