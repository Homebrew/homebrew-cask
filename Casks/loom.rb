cask 'loom' do
  version '0.32.0'
  sha256 '20ad836bf855553b476f21b479dc195cea0da9957179b05ec53b172268b33de6'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
