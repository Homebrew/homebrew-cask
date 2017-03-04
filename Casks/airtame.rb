cask 'airtame' do
  version '2.2.0'
  sha256 '2ec9e5248fbcec0e8f65481d49018648e3234d72673c5faf18553a4a407e3987'

  url "https://downloads-cdn.airtame.com/application/ga/osx_x64/releases/airtame-application-#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
