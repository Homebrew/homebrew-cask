class Dradio < Cask
  version :latest
  sha256 :no_check

  url 'http://dradio.me/download'
  appcast 'http://dradio.me/updates/appcast.xml'
  homepage 'http://dradio.me'
  license :unknown

  app 'dRadio.app'
end
