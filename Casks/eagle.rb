cask 'eagle' do
  version '9.4.2'
  sha256 '2fa5597c7f996df0a9c47473a4551d5b3c15fd4a52437832bd754e2b7faea7a6'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.autodesk.com/eagle-download-mac'
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
