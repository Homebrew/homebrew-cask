class Musique < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://flavio.tordini.org/files/musique/musique.dmg'
  appcast 'http://flavio.tordini.org/musique-ws/appcast.xml'
  homepage 'http://flavio.tordini.org/musique'

  link 'Musique.app'
end
