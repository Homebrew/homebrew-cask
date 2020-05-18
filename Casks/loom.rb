cask 'loom' do
  version '0.37.1'
  sha256 'b8d49b9d64accb9f9c9fbec4aa63f47560698adb64b2e55473fa5b6d1173667d'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
