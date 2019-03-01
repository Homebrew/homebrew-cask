cask 'kite' do
  version '0.20190227.0'
  sha256 '561aaf55458ebaf52e72f966f175f2f32805e42a4714b41b88f4f152eb4d6b7e'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
