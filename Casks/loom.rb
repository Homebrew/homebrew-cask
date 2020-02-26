cask 'loom' do
  version '0.30.1'
  sha256 '0bcee2ed8a2c94b935ba870fadd1e142c4ac0dd6fc88fd21fcc17543aef27e2d'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
