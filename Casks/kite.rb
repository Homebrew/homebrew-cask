cask 'kite' do
  version '0.20170519.0'
  sha256 '79c7609075d40362e34322dc472fd733f6c5a8f9fccab73f18830384a11c41f5'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml',
          checkpoint: '780d78c4ae33d46d3b2257842345e40a360d5c13c3ca1a704c4a4b2c3cfb6794'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
