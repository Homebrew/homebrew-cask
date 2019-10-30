cask 'kite' do
  version '0.20191029.0'
  sha256 'd504510207d3a0cc885142ebf415e54db991ff6de194547c97fafd14eaabe214'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
