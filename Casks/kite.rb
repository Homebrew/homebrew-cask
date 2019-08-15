cask 'kite' do
  version '0.20190814.0'
  sha256 'ca1591535799ea36542818d0614f6af57fcae584f74c2fe6840c865e840f22b5'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
