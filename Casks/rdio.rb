class Rdio < Cask
  url 'https://www.rdio.com/media/static/desktop/mac/Rdio.dmg'
  appcast 'http://www.rdio.com/media/static/desktop/mac/appcast.xml'
  homepage 'http://www.rdio.com'
  version 'latest'
  sha256 :no_check
  link 'Rdio.app'
end
