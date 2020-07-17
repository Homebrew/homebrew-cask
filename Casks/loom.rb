cask 'loom' do
  version '0.42.5'
  sha256 'f4385822f04a2ab11ecfc509d23aaca08c5dca3a5dbd30fa6914487f6693605d'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
