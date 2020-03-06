cask 'loom' do
  version '0.30.6'
  sha256 'a5d376feb49ce387d3d849590586b866a3ec156e7e849fc2ab1c457515190984'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
