cask 'kite' do
  version '0.20190521.0'
  sha256 'f60083d2bc5e9a627c4cd496f35bcd2d71975d42669307605a94085465a13762'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
