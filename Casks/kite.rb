cask 'kite' do
  version '0.20181019.1'
  sha256 '7e72b05b71e99424534751a92a5ac862feff754853783bde71e6bbee4dd3d25a'

  # s3-us-west-1.amazonaws.com/kite-downloads was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/kite-downloads/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Kite.app'
end
