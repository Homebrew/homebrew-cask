cask 'airtame' do
  version '4.0.1'
  sha256 '159e7ccbebbe9028256422ac7e33b27b0daf45876be0a11c87393aae2d3c87a6'

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads-cdn.airtame.com/get.php?platform=osx_x64'
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
