cask 'loom' do
  version '0.29.2'
  sha256 '0bd40209159ff43c1b7e43643d3d92c66d10135decd909a44edf038aaaa17a82'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
