class Musique < Cask
  url 'http://flavio.tordini.org/files/musique/musique.dmg'
  appcast 'http://flavio.tordini.org/musique-ws/appcast.xml'
  homepage 'http://flavio.tordini.org/musique'
  version 'latest'
  sha256 :no_check
  link 'Musique.app'
end
