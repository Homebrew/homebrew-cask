cask 'loom' do
  version '0.30.7'
  sha256 'fbab66965136a22569a59ff78fe1c560dffc703a8902bb6033dbddce10ddc6f8'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
