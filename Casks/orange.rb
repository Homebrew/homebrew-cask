cask 'orange' do
  version '3.24.1'
  sha256 '4f31193260c4f2d9f0a495d664e8fbc7438aebfadc7e83f1d950c1c672873887'

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://service.biolab.si/download/orange?platform=mac'
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
