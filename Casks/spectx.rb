cask 'spectx' do
  version '1.4.52'
  sha256 '91958889c5eeb0699789d81a698427a84b313f529aa7112f8c806321e7b5684f'

  url "https://get.spectx.com/03f21b939e022/SpectXDesktop-v#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://go.spectx.com/get/?desktop-osx64'
  name 'SpectX Desktop'
  homepage 'https://www.spectx.com/'

  app 'SpectXDesktop.app'
end
