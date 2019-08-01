cask 'kite' do
  version '0.20190731.0'
  sha256 'd17a894a7545776b2b73e758978fbb041d574952dfe3cefcdcc0c2af24f25a25'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
