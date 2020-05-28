cask 'loom' do
  version '0.37.3'
  sha256 '8f68a5f10c67b668ec6c7718d9d83f29f2c31c076fff76d164f8c8f212b8bceb'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
