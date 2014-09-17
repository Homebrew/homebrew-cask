class Minitube < Cask
  version :latest
  sha256 :no_check

  url 'http://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'http://flavio.tordini.org/minitube-ws/appcast.xml'
  homepage 'http://flavio.tordini.org/minitube'

  app 'Minitube.app'
end
