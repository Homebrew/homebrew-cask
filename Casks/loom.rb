cask 'loom' do
  version '0.42.8'
  sha256 '1b73793f89524e501761962ac7819fada8ed0f39efd5f9d1bf0291e42bfcfcf2'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
