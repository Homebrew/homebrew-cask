cask 'loom' do
  version '0.33.1'
  sha256 'f0b1a74cdda06b8d0fbfec72a604ddd7c075dd1ce34b86987c43da56a493f44b'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
