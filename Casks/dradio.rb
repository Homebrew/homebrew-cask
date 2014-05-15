class Dradio < Cask
  url 'http://dradio.me/download'
  appcast 'http://dradio.me/updates/appcast.xml'
  homepage 'http://dradio.me'
  version 'latest'
  sha256 :no_check
  link 'dRadio.app'
end
