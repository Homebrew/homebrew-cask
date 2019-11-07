cask 'kite' do
  version '0.20191106.1'
  sha256 '9cf84e42f4f504d01b1e8aef07346bcac831117e986e902044e910cdca35dd39'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
