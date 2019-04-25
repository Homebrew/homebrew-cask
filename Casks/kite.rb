cask 'kite' do
  version '0.20190424.0'
  sha256 'aeaee150a1febc9dccef4d7a8fa2b04eab37266d29a251549eabbc6d361c8ef7'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
