cask 'kite' do
  version '0.20170331.0'
  sha256 'ec6d1c3b42c687f3efeb8eb2e10ca4b07f402c379d733eb5b7d64a0a7a5cdc84'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '7611b119c633ab1402d8348f29d1aaa9743b2dadf815a3d984fcb6942e807686'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
