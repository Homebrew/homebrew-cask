cask 'kite' do
  version '0.20190619.0'
  sha256 '5901bc5ae62015a2f9da65db0da24ca83fd3e26ba0712e2adf0a275429f50f2c'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
