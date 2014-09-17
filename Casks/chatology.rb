class Chatology < Cask
  version :latest
  sha256 :no_check

  url 'https://flexibits.com/chatology/download'
  appcast 'https://flexibits.com/chatology/appcast.php'
  homepage 'http://flexibits.com/chatology'

  app 'Chatology.app'
end
