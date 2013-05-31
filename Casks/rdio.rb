class Rdio < Cask
  url 'http://www.rdio.com/media/static/desktop/mac/Rdio.dmg'
  homepage 'http://www.rdio.com'
  version 'latest'
  no_checksum
  link :app, 'Rdio.app'
end
