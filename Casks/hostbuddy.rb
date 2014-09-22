class Hostbuddy < Cask
  version :latest
  sha256 :no_check

  url 'https://clickontyler.com/hostbuddy/download/'
  appcast 'http://shine.clickontyler.com/appcast.php?id=22'
  homepage 'http://clickontyler.com'

  app 'Hostbuddy.app'
end
