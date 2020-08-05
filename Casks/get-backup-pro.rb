cask "get-backup-pro" do
  version "3.5.7"
  sha256 "28540bea27d12801465de812c729c67a0bc1bef7a64363ba2a31e8a4b5787020"

  # belightsoft.s3.amazonaws.com/updates/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
  name "Get Backup Pro #{version.major}"
  homepage "https://www.belightsoft.com/products/getbackup/"

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
