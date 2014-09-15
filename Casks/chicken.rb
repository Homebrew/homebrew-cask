class Chicken < Cask
  version '2.2b2'
  sha256 '20e910b6cbf95c3e5dcf6fe8e120d5a0911f19099128981fb95119cee8d5fc6b'

  url 'https://downloads.sourceforge.net/project/chicken/Chicken-2.2b2.dmg'
  appcast 'http://chicken.sourceforge.net/chicken.xml'
  homepage 'http://sourceforge.net/projects/chicken/'

  app 'Chicken.app'
end
