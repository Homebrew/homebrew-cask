cask 'musique' do
  version '1.7'
  sha256 'be957cf7228fd7aafae304b7a7aa7cddac1e7f05afe73b62331e8b3021c9f4df'

  url 'https://flavio.tordini.org/files/musique/musique.dmg'
  appcast 'https://flavio.tordini.org/musique-ws/appcast.xml'
  name 'Musique'
  homepage 'https://flavio.tordini.org/musique'

  app 'Musique.app'
end
