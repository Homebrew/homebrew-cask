cask 'kite' do
  version '0.20190423.0'
  sha256 'c47d58462f6a1cb802f697acaf1856ba31a65ebbc2d164edd7105c0724818296'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
