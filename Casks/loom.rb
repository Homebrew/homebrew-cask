cask 'loom' do
  version '0.37.0'
  sha256 'dc5760cdd27ae01ddc8cb2be421e5628eb52308cb47c1de684be246af1bcef10'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
