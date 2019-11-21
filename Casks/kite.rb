cask 'kite' do
  version '0.20191120.0'
  sha256 '5542ab5bccfbce154e9a5530b6164f1f9979f508515353a4ff5291028bc317d0'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
