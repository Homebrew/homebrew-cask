cask 'loom' do
  version '0.33.8'
  sha256 '262dbc1751aa439a60ab17028db1d77418aaf9b4d9b673e042324b3ca560d17f'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
