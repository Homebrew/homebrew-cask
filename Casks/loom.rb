cask 'loom' do
  version '0.41.5'
  sha256 '696c1222706bd759db1952253dd2fb564bcb56395556fd5961013b0230f8d5b7'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
