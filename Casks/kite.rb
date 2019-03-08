cask 'kite' do
  version '0.20190306.0'
  sha256 'dcc29eeb92f10d4daebd1cad9feaead9e3f7322f0901202d5e7c1a92b5f6a753'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
