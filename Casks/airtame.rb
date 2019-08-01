cask 'airtame' do
  version '3.5.0'
  sha256 'bc8f55ab6d11b5815c1484f5345cc151b5a3f8e980292238ffc4c7c5da51c585'

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads-cdn.airtame.com/get.php?platform=osx_x64'
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
