cask 'kite' do
  version '0.20190109.1'
  sha256 'ef94248a5d55a3f7ad2e4d82bccae2cbd62606fc8af47d488a45a04ab92a1729'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
