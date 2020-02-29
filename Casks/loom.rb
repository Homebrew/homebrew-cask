cask 'loom' do
  version '0.30.3'
  sha256 'd104b4932b3f8a4f5e3b52bc0d7345b2d72d243f53c4f7c54ae20bdf60116219'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
