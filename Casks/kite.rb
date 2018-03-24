cask 'kite' do
  version '0.20180322.0'
  sha256 '3f05e9c5da1bac0f4920f228fdd37fb834af425a58b08616b2676c459dc7d430'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'e957c86f6616fa1f359d7287a37d2942b679215ae5dde2115749950a4c08bc68'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
