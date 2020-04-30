cask 'loom' do
  version '0.36.2'
  sha256 'ec5c6a6a09988e830bdb67322b7762493938c308f53273e1b4469a2879984e51'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
