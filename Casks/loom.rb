cask 'loom' do
  version '0.40.2'
  sha256 'ac24db174abfae33a9be88080e6d6e84c5a5ff64293a4d92dbca8e26caade36a'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
