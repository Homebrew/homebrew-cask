cask 'loom' do
  version '0.33.7'
  sha256 '54e14bb854f83e10c49ae061c1a158e4bbe620ed8aa89e079e63c5ebc14c2d2b'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
