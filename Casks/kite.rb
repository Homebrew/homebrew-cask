cask 'kite' do
  version '0.20190807.0'
  sha256 'ccd58c8b38237ff7b337abf6d32f79425d9751f4fa34e9e3fb29b051cd2d866f'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
