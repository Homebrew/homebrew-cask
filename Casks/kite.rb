cask 'kite' do
  version '0.20190425.0'
  sha256 '222513eb4d499fa346b86d39d7e32cb3f5f7f62d92c41d0a19d6792b6e484c4e'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
