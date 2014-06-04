class Minitube < Cask
  url 'http://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'http://flavio.tordini.org/minitube-ws/appcast.xml'
  homepage 'http://flavio.tordini.org/minitube'
  version 'latest'
  sha256 :no_check
  link 'Minitube.app'
end
