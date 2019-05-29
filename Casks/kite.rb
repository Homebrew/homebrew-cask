cask 'kite' do
  version '0.20190523.0'
  sha256 'b0534b5fa6154d33a60f2f78124131502009000411a2ff42ec30b2549358f12f'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
