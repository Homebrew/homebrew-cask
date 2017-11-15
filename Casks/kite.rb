cask 'kite' do
  version '0.20171114.0'
  sha256 '83cf7a8c8a07391195ecf1c7b144053291d3743261f194d398f8b09c0803560d'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '7995d2d44a2f8aabd3014e06fab625f4bebd44d83020081d5912574816fdab6e'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
