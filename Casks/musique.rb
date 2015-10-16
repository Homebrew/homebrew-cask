cask :v1 => 'musique' do
  version :latest
  sha256 :no_check

  url 'http://flavio.tordini.org/files/musique/musique.dmg'
  appcast 'http://flavio.tordini.org/musique-ws/appcast.xml'
  name 'Musique'
  homepage 'http://flavio.tordini.org/musique'
  license :commercial

  app 'Musique.app'
end
