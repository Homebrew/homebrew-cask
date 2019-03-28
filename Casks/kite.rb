cask 'kite' do
  version '0.20190326.0'
  sha256 '8877f8a9093da225cadf7452758d9fec692495fe201a77b8fbcd6a4e5a2b4a92'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
