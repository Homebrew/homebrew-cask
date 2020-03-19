cask 'loom' do
  version '0.30.8'
  sha256 '6a57c66402243117ee297809697421fc3df67df5e75795c5a9368faa4b6b5e54'

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}.dmg"
  appcast 'https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml'
  name 'Loom'
  homepage 'https://www.loom.com/'

  auto_updates true

  app 'Loom.app'
end
