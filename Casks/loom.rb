cask 'loom' do
  version '0.42.6'
  sha256 '86a7413185d189a9625023684aefde92ecddc33d0de4a9ba0e461f5e17ea2beb'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
