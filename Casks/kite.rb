cask 'kite' do
  version '0.20190604.1'
  sha256 '6b3a86c73080f5666f22868bca36f014a39ed4fc324e845dbf9cc03881d3c9a2'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
