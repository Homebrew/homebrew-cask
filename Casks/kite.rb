cask 'kite' do
  version '0.20191024.1'
  sha256 'f520c1dd9070c009e1ff39a68f49859513929962dbe5600db9078c31bceca29c'

  # kite-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://kite-downloads.s3.amazonaws.com/Kite-#{version}.dmg"
  appcast 'https://release.kite.com/appcast.xml'
  name 'Kite'
  homepage 'https://kite.com/'

  auto_updates true

  app 'Kite.app'
end
