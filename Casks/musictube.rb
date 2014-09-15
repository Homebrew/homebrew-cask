class Musictube < Cask
  version 'latest'
  sha256 :no_check

  url 'http://flavio.tordini.org/files/musictube/musictube.dmg'
  appcast 'http://flavio.tordini.org/musictube-ws/appcast.xml'
  homepage 'http://flavio.tordini.org/musictube'

  app 'Musictube.app'
end
