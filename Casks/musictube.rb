cask :v1 => 'musictube' do
  version :latest
  sha256 :no_check

  url 'http://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'http://flavio.tordini.org/musictube-ws/appcast.xml'
  name 'Musictube'
  homepage 'http://flavio.tordini.org/musictube'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Musictube.app'
end
