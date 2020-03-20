cask 'loom' do
  version '0.30.9'
  sha256 'd9f4c48cfc70f718d8ccb1f0b7a473dd30b5d45c550bf471568d3452fa8f7acb'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
