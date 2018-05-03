cask 'kite' do
  version '0.20180502.1'
  sha256 '9cd5e91808754292dd78e656f9b3211fce80de5f720e444421c51c0b41ee2ba2'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: 'a037f68abea6ff103b52bf5ee60213d87c289a338ec8102bacd221f7469ec512'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
