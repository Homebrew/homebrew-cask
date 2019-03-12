cask 'airtame' do
  version '3.3.2'
  sha256 '9ec8223a8998cf9756e1252f6831cc6357f8856813ddef08a788bddbd7594ceb'

  url "https://downloads-cdn.airtame.com/application/ga/osx_x64/releases/airtame-application-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads-cdn.airtame.com/get.php?platform=osx_x64'
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
