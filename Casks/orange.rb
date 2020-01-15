cask 'orange' do
  version '3.24.0'
  sha256 'ee584da07231faddc447386a494ef70dafe3482042b071d6f8fa1fd7782b18d7'

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://service.biolab.si/download/orange?platform=mac'
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
