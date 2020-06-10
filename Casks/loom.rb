cask 'loom' do
  version '0.38.0'
  sha256 '46e0b3c4cc3a97e172d1abe08087817425486230b4ee1b06764f078d7c1eb5aa'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
