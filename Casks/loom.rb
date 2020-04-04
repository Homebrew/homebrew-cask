cask 'loom' do
  version '0.33.5'
  sha256 'f0dc266f5a3f6d3501fd39cc612d67ad3080d1e4a42e4d60938ba9edd586c554'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
