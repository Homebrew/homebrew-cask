cask 'spectx' do
  version '1.4.51'
  sha256 '0872cd241f209b80e93166ac0f547ce5df73fb233e35a7430ab4f8a990b0033d'

  url "https://get.spectx.com/03f21b939e022/SpectXDesktop-v#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://go.spectx.com/get/?desktop-osx64'
  name 'SpectX Desktop'
  homepage 'https://www.spectx.com/'

  app 'SpectXDesktop.app'
end
