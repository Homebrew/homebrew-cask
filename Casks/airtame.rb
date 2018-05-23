cask 'airtame' do
  version '3.2.0'
  sha256 '7cf669b7ea5974818891428b7ef37f03879840ffa42ae559db7302a6bd6c1b45'

  url "https://downloads-cdn.airtame.com/application/ga/osx_x64/releases/airtame-application-#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
