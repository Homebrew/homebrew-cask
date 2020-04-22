cask 'get-backup-pro' do
  version '3.5.2'
  sha256 'e5b8a45d427efb8fcb4725a03afba7a27805d3de8a85c0998009cba386b74ed8'

  # belightsoft.s3.amazonaws.com/updates/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
