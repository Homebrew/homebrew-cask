cask 'kite' do
  version '0.20170518.0'
  sha256 '140ee91554c8db696c2256613bcf964df35978bf55e43ae79a30e94e1c6d180d'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'fc23fa6dd8299320c7ca08e412b67a2eb16a5600d6139f4dca96e4dedbeb3618'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
