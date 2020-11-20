cask "get-backup-pro" do
  version "3.6.0"
  sha256 "58ca471d1afc2dba6622fe0c0308093b61f2e67c4da68cd083c121b0d4f9d932"

  # belightsoft.s3.amazonaws.com/updates/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
  name "Get Backup Pro #{version.major}"
  desc "Backup software with folder synchronization"
  homepage "https://www.belightsoft.com/products/getbackup/"

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
