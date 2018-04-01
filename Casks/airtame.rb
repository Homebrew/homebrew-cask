cask 'airtame' do
  version '3.1.1'
  sha256 '4947ae4186d62d1c0587e536ddecf078de187c518edf7f744e1b418939847de5'

  url "https://downloads-cdn.airtame.com/application/ga/osx_x64/releases/airtame-application-#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
