cask 'loom' do
  version '0.42.2'
  sha256 '298cd6f2d45aa94a45eb3475bd2fb0c0237b35336782e31843370ba02336b1bf'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
