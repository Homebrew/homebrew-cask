cask 'get-backup-pro' do
  version '3.3.2'
  sha256 'bddece820707578ce640cd4b707a6c2cb88c2a3ba63b45e09741f5a0ce722a1b'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml",
          checkpoint: '08b97dc2913b2a9c3d4153d26f9689cff91942b3c8d566ef34409d7d740afd9b'
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  license :commercial

  app "Get Backup Pro #{version.major}.app"
end
