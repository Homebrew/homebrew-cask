cask 'loom' do
  version '0.32.1'
  sha256 '67a93ea48a1424c076bedf6cd24d97ba564b68b9dcca0dab2e35f3878a3ab2b4'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
