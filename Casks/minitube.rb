cask :v1 => 'minitube' do
  version :latest
  sha256 :no_check

  url 'http://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'http://flavio.tordini.org/minitube-ws/appcast.xml'
  homepage 'http://flavio.tordini.org/minitube'
  license :unknown    # todo: improve this machine-generated value

  app 'Minitube.app'
end
