cask 'orange' do
  version '3.23.1'
  sha256 '3ab38b74ecc3a4c7a39a96f498630a0518468efbdfe37f1ebc641d7b16e9f226'

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://service.biolab.si/download/orange?platform=mac'
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
