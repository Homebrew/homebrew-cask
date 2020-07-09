cask 'loom' do
  version '0.42.1'
  sha256 'cc726e9e87821881659e432b74b970441aac692a0095710d2d9a4cad17587e42'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
