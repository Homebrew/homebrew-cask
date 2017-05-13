cask 'kite' do
  version '0.20170512.0'
  sha256 '0f4ab7c2fb0501552fd024c796dd1783df6cdd2fd595adb60a78619ab36de6fa'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '921ed93bdc26a60ebf4c27101b9b78ee526c86634b0f9a5b11c2006c5f0b5a07'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
