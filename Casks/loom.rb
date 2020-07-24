cask 'loom' do
  version '0.42.10'
  sha256 'bce3eaa2b02cb612be640be20fb1e875d704dd880e95434ea2d5ce218137a37b'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
