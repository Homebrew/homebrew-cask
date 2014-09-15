class Scapple < Cask
  version 'latest'
  sha256 :no_check

  url 'https://scrivener.s3.amazonaws.com/Scapple.dmg'
  appcast 'http://www.literatureandlatte.com/downloads/scapple/scapple.xml'
  homepage 'https://www.literatureandlatte.com/scapple.php'

  app 'Scapple.app'
end
