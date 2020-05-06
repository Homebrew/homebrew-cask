cask 'loom' do
  version '0.36.5'
  sha256 'f5d1855ec1bd3434fecd21e0661ee68f3ac4461b66141b076c6272977cc89992'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
