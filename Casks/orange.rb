cask 'orange' do
  version '3.22.0'
  sha256 '9bce16067e851164f73444bec367828b81594952826d67d252c4772add95c7a7'

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://service.biolab.si/download/orange?platform=mac'
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
