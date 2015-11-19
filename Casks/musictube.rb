cask :v1 => 'musictube' do
  version :latest
  sha256 :no_check

  url 'http://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'http://flavio.tordini.org/musictube-ws/appcast.xml'
  name 'Musictube'
  homepage 'http://flavio.tordini.org/musictube'
  license :commercial

  app 'Musictube.app'
end
