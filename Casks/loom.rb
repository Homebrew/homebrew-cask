cask 'loom' do
  version '0.41.0'
  sha256 'a12491d679a817e83d6f7a445065e0047ad32dd0b879258f60f7e3e635c87596'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
