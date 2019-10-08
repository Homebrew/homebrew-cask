cask 'get-backup-pro' do
  version '3.4.18'
  sha256 '844ea9110e0763cc6dd8441aead9ab89fcab0ed0f6e0113f2375e9d9dc923da4'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml"
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
