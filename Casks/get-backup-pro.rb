cask 'get-backup-pro' do
  version '3.4.11'
  sha256 '0f1c75cb1406887a0c78dc478131a9cca9c5902ac3aae9b855a97c35be639dd4'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
