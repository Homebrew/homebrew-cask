cask 'airtame' do
  version '3.0.1'
  sha256 '43a0211ec92341d33c73efb0d5c5f3b6e4afb4ababfdb7d5ccbde5bcd1146bf7'

  url "https://downloads-cdn.airtame.com/application/ga/osx_x64/releases/airtame-application-#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
