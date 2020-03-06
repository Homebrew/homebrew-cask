cask 'kite' do
  version '0.20200304.1'
  sha256 'c4facd476bfe018227975a152a033f09ba5e5533b04ba2e6c93657370522376e'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
