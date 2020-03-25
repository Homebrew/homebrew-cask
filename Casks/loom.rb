cask 'loom' do
  version '0.31.0'
  sha256 '2e751c32ac0c0d2a08399e0c24c863972d9800badd2e704d3359b073b00d33ea'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
