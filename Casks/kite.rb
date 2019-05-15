cask 'kite' do
  version '0.20190509.1'
  sha256 'c6919fecc6d48f0feb8d93ae456746e10eaeeed43ed8b9acab566e3b334fe266'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
