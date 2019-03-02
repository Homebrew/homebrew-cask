cask 'kite' do
  version '0.20190228.0'
  sha256 '3ca5cd563245ff7762457d065e7bb4539ee3e0556ce08499dfe1bf2b02686548'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
