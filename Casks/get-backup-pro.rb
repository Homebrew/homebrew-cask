cask 'get-backup-pro' do
  version '3.4.17'
  sha256 '221709769a16a06015a4edaa5025cdbc46f7c1703e008042dc1a13133c97d62d'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
