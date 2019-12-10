cask 'kite' do
  version '0.20191205.2'
  sha256 'abdce3f7ae86069d748e6a6402ffc41fd5d6994b0190685ab12c198ba1218c04'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
