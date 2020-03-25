cask 'airtame' do
  version '4.0.0'
  sha256 '90d315fbacca451e88171bce3156ac6859b2078bcb7846e6af1b0c91c994be0e'

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads-cdn.airtame.com/get.php?platform=osx_x64'
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
