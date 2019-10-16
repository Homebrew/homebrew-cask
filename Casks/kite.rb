cask 'kite' do
  version '0.20191015.0'
  sha256 'bc88f2d89bf851dca39cb1907c23f431e8c4440f0ea17b35cd2b0c753653eeb9'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
