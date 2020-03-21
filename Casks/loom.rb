cask 'loom' do
  version '0.30.11'
  sha256 '01502be694e204e21ec072ada39e92a09dcd1ac3dd5353dffed8e017123a8a0f'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
