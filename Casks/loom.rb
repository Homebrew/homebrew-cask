cask 'loom' do
  version '0.36.1'
  sha256 'cfd04a01b6479da43ef76a32feb8ebcafd99d6bdec23a61e2fb1df6dcd85b928'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
