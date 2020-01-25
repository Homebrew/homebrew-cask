cask 'loom' do
  version '0.27.0'
  sha256 'eb7786f31ab63de95142d2a342b667d5c1b51651a4cc3cd4adb3a709968afd06'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  app 'Loom.app'
end
