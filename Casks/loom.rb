cask 'loom' do
  version '0.34.3'
  sha256 '0cc3e0b38ddb5a380bc2f940a1a6f10cae6f00c4a04dbdfd2a311f786156e69c'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
