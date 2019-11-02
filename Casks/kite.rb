cask 'kite' do
  version '0.20191031.0'
  sha256 '70e94c8000d648a8c3f66d38ec758a6f99fa97d35eeef9c8c13414000beea6b4'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
