cask 'get-backup-pro' do
  version '3.5.4'
  sha256 '7cc6eeffad86c75128cdfb7b573abc652434299c01ccf62df56b6b26a8842d7a'

  # belightsoft.s3.amazonaws.com/updates/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
