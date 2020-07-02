cask 'loom' do
  version '0.41.2'
  sha256 '12d2d179ac92f4e1344711a1d4a2b54259c2eba04948cea8597c6ada7e23d4a2'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
