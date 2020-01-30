cask 'loom' do
  version '0.27.1'
  sha256 'ed1b1d79c7e03808874e5676b7d54b7b140117e4ceb6b870a38963b7d6c67aff'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
