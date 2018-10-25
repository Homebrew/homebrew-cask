cask 'airtame' do
  version '3.3.0'
  sha256 'abdfb0527a2997dd7048341f3ace2ba034e30c47848b3c1c99882540ac81c6e9'

  url "https://downloads-cdn.airtame.com/application/ga/osx_x64/releases/airtame-application-#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
