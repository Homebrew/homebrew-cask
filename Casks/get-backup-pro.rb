cask "get-backup-pro" do
  version "3.5.8"
  sha256 "115f35aabc153d76529f959cd04b89195f6e0b61d1671f4e6222065aa851ff74"

  # belightsoft.s3.amazonaws.com/updates/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
  name "Get Backup Pro #{version.major}"
  homepage "https://www.belightsoft.com/products/getbackup/"

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
