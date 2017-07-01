cask 'kite' do
  version '0.20170628.1'
  sha256 'c60167fe86a939273b97f7c89faef152706a6ec5d5be206faeaa3ad1a39599da'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '0799d1b291a57fde09d23a4eb31b340c3d7dcaad143124d56c1f2d7a49510697'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
