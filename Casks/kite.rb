  version '0.20170330.0'
  sha256 'ffeef839d7bdf591134ec56f060e0305a4a6e1fc8f1c0cd1714c787eb57ab0db'
cask 'kite' do

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '7611b119c633ab1402d8348f29d1aaa9743b2dadf815a3d984fcb6942e807686'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
