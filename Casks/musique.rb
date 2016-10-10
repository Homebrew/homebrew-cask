cask 'musique' do
  version '1.4'
  sha256 '9754ac4b22085915cefa8ad0b7e3534a7c53c40dbfa31f8bdd13119ae7187cfb'

  url 'http://flavio.tordini.org/files/musique/musique.dmg'
  appcast 'http://flavio.tordini.org/musique-ws/appcast.xml',
          checkpoint: '3cebec0525bba0365792d2863845951335a62c758ad585c84e52333a73b0e218'
  name 'Musique'
  homepage 'http://flavio.tordini.org/musique'

  app 'Musique.app'
end
