cask 'kite' do
  version '0.20190813.0'
  sha256 'e8bbd6e07b2fbee8d73898efe02fbcdd883e0ac127d7c42f74764635c26fcd03'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
