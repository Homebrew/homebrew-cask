cask 'orange' do
  version '3.23.0'
  sha256 'e53f73fe4b0bcb7339430e5a67c5e43136d9a20a6cafe74d4d127746ac3d7789'

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://service.biolab.si/download/orange?platform=mac'
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
