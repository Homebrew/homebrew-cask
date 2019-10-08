cask 'kite' do
  version '0.20191004.0'
  sha256 'd8807f5416df3f5da9c9c0bdb1fb91d4d1cf91566211db1d2b2e24dbffc339cb'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
