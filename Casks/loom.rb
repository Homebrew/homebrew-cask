cask 'loom' do
  version '0.30.5'
  sha256 '09461ee2dbe0de9240bb9ba76f1154a5b0476e88679fbac2eb03448cf822c388'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
