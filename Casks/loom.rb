cask 'loom' do
  version '0.42.4'
  sha256 'a0ce988bf684822b9232eda0035000eaf377e82cb957d5dc8869da5f255a194a'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
