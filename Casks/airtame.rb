cask 'airtame' do
  version '4.1.0'
  sha256 'aa90d0e147f9db6159ed21ee81e2141833fdcf059796a3ec93a2a63d247a3f23'

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads-cdn.airtame.com/get.php?platform=osx_x64'
  name 'Airtame'
  homepage 'https://airtame.com/'

  auto_updates true

  app 'Airtame.app'
end
