cask 'airtame' do
  version '2.4.1'
  sha256 '7e6bd34618b56cfc0f02588560df04f4882be074912d761ebf7e0264db870655'

  url "https://downloads-cdn.airtame.com/application/ga/osx_x64/releases/airtame-application-#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
