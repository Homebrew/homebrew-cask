cask 'kite' do
  version '0.20190903.0'
  sha256 '3572915840542fad91da5feda0ffebfc92bcce5ec1e73537453fbe1c940b5ac9'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
