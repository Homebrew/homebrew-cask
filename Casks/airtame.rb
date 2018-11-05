cask 'airtame' do
  version '3.3.1'
  sha256 '47ad9fb1698d52cb8f8c62865f561579d4686dfddad6a7cdbb47959d53dd3023'

  url "https://downloads-cdn.airtame.com/application/ga/osx_x64/releases/airtame-application-#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
