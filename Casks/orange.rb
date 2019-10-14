cask 'orange' do
  version '3.23.1'
  sha256 'c9225f9bd53a7c475fe134602dd270599f3d01cd9c0fbe19ee6f7203dad3464b'

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://service.biolab.si/download/orange?platform=mac'
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
