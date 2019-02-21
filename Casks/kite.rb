cask 'kite' do
  version '0.20190219.0'
  sha256 'ae85aa98d0fe805ab6aa50f04f910bfd4c78bed88d660f3d3425d15eb7b0ad1c'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
