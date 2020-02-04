cask 'loom' do
  version '0.28.0'
  sha256 '71d5f9dbdb97b830cca9e65518cc22de2c77b4152b7b4e93cfd316689afd7337'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
