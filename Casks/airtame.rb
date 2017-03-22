cask 'airtame' do
  version '2.3.4'
  sha256 'a3e59296542c080e5580815fec9fbf3cab765f56cc55b14c164fdb777f1c0efd'

  url "https://downloads-cdn.airtame.com/application/ga/osx_x64/releases/airtame-application-#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
