cask 'loom' do
  version '0.41.3'
  sha256 'e1fbf7d4c82052aa7f6a6a5b6b8cfa808146f2ce82341a6250e629f975c855fc'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
