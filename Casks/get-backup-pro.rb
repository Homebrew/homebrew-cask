cask 'get-backup-pro' do
  version '3.4.8'
  sha256 '85e1f00184281325212ce5ca71c9f4948df4c7f0fbd37cb3a738d7fa50b355e2'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
