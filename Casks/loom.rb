cask 'loom' do
  version '0.36.7'
  sha256 'df1929d32a8c0440cfaaf28c90c55b47bd0dde8812e89fc395c0bec397f92602'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
