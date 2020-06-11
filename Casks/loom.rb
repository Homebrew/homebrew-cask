cask 'loom' do
  version '0.38.1'
  sha256 '04d71737720e0c2b67a4b718874860687f75f10e8d9a91ae30ee6bb4b55d77ca'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
