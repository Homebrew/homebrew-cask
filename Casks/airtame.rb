cask 'airtame' do
  version '3.2.2'
  sha256 '13f20f7c2682d2076426bffe7778bf6afb0222769c24053ece691bdde7000490'

  url "https://downloads-cdn.airtame.com/application/ga/osx_x64/releases/airtame-application-#{version}.dmg"
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
