cask :v1 => 'minitube' do
  version :latest
  sha256 :no_check

  url 'http://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'http://flavio.tordini.org/minitube-ws/appcast.xml'
  homepage 'http://flavio.tordini.org/minitube'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Minitube.app'
end
