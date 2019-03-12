cask 'kite' do
  version '0.20190307.0'
  sha256 'c93a982719c098b0a2c842782a1ec96ea2c83c2db594bb3330526c1c3e4759b9'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
