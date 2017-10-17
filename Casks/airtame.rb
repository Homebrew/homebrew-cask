cask 'airtame' do
  version '3.0.0'
  sha256 '3058c2139c8e7b9518c6d68e8cf35be09f029b7ca920ce6bf785abae2056fa35'

  url "https://downloads-cdn.airtame.com/application/ga/osx_x64/releases/airtame-application-#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
