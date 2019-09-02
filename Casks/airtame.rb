cask 'airtame' do
  version '3.5.1'
  sha256 '87d18b00238f76855152d26e0f1f69ce45dd56593b13f6be2eefb3bcb3468604'

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads-cdn.airtame.com/get.php?platform=osx_x64'
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
