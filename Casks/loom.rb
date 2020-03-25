cask 'loom' do
  version '0.31.1'
  sha256 '8cbfc08dffded007a3d5963df8dcb63f07ff367e513e4408116e29b3621258ea'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
