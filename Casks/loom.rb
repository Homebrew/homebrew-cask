cask 'loom' do
  version '0.37.2'
  sha256 '240fbf1ef1ee1375b1c61e8fead13bb890405b25964690d5b2e4f12773cc86a9'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
