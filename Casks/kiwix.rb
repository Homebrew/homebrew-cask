cask 'kiwix' do
  version '2.1.1'
  sha256 '48062d3d3156eeecec78bce226a2612b97ef84434d2e7b3d3ad402063e17e3e1'

  url "https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos.dmg'
  name 'Kiwix'
  homepage 'https://www.kiwix.org/'

  app 'Kiwix.app'
end
