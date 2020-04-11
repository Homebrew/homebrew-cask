cask 'loom' do
  version '0.34.0'
  sha256 'a8127e53241cade45116bbe0d754a77574bcaf37c676b290c14bc666efef650f'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
