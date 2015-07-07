cask :v1 => 'musique' do
  version :latest
  sha256 :no_check

  url 'http://flavio.tordini.org/files/musique/musique.dmg'
  appcast 'http://flavio.tordini.org/musique-ws/appcast.xml'
  name 'Musique'
  homepage 'http://flavio.tordini.org/musique'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Musique.app'
end
