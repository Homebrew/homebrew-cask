cask 'airtame' do
  version '3.6.1'
  sha256 '1ed7013a174da6964bdc180f4a851c330701f7a93ecc1bfb7e4ec7d00d70be3f'

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads-cdn.airtame.com/get.php?platform=osx_x64'
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
