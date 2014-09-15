class Scrivener < Cask
  version 'latest'
  sha256 :no_check

  url 'https://scrivener.s3.amazonaws.com/Scrivener.dmg'
  appcast 'http://www.literatureandlatte.com/downloads/scrivener-2.xml'
  homepage 'http://literatureandlatte.com/scrivener.php'

  app 'Scrivener.app'
end
