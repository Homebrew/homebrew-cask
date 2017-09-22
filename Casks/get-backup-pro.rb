cask 'get-backup-pro' do
  version '3.4'
  sha256 '5ab883193f8129506c43369bb75fc23feeb12b307fa57f51094dde0455fe9de5'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml",
          checkpoint: '8c150fdff091eb3f91aad83ad62088797af7cb87b41bacfb277ab6e078a14c35'
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  app "Get Backup Pro #{version.major}.app"
end
