cask 'kite' do
  version '0.20190312.0'
  sha256 '4a97f29d498ef7c075876bacb7acbf9960edcb7f03f10cfc8e7e91ceed2a443f'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
