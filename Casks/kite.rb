cask 'kite' do
  version '0.20170803.2'
  sha256 'dbaa67e1dcfd2cf47f1b4052cd80c3eab04a3b866874e34dfd261c0d6a2ccf78'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'a48ebed15a1a1027ce60506fc9c38f2d06f0ddd2d8355f6736eae340c79e048e'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
