cask 'kite' do
  version '0.20190409.0'
  sha256 'c3ac9ccbfd3f50b4e0e2f439905e1e8bf0e3a78f6e7b00914aae2603ea05fa52'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
