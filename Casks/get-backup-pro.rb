cask 'get-backup-pro' do
  version '3.4.2'
  sha256 '01d7e4bd623ed7b079ec8bf0c38a418675e50de8396dfc3a453270c7a33dceeb'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml",
          checkpoint: 'd7762347d2ff3c6995fbf00ad36c7409126faad67706ccb17911bb6a55eeebaa'
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  app "Get Backup Pro #{version.major}.app"
end
