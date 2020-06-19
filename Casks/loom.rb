cask 'loom' do
  version '0.40.3'
  sha256 '4f70b20f1e00a868d75bb229e4f2790a2f0d67cdd3f3b79cbc50e52e5e849a4e'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
