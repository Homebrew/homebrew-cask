cask 'kite' do
  version '0.20170914.0'
  sha256 '19eb4c90f9c0235b53313ad548a3c5b37ed0d587f99ecd83e1cffc45f0f53f8e'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '1f734d2ea6693eab842071edc512c6d6dae1e905a1dfe1d5e9f40881653bb0ae'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
