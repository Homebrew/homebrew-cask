cask :v1 => 'musique' do
  version :latest
  sha256 :no_check

  url 'http://flavio.tordini.org/files/musique/musique.dmg'
  appcast 'http://flavio.tordini.org/musique-ws/appcast.xml'
  homepage 'http://flavio.tordini.org/musique'
  license :unknown    # todo: improve this machine-generated value

  app 'Musique.app'
end
