cask 'get-backup-pro' do
  version '3.4.5'
  sha256 '784ffe7c34e32ff65046059788deac6b190651b47c570265e4074a2b132d2fae'

  # belightsoft.s3.amazonaws.com/updates was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/updates/Get+Backup+Pro+#{version.major}.zip"
  appcast "https://www.belightsoft.com/download/updates/appcast_getbackup_pro#{version.major}.xml",
          checkpoint: '507d215b61bcd6493e08d33bbaa8a6385a0db59b1312d10b38c23d89696eaeb6'
  name "Get Backup Pro #{version.major}"
  homepage 'https://www.belightsoft.com/products/getbackup/'

  auto_updates true

  app "Get Backup Pro #{version.major}.app"
end
