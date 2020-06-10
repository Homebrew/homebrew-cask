cask 'minitube' do
  version '3.4'
  sha256 '52f423d4225cb9360df00d7f669d55890d674cb4a289e8855375236d660e49ab'

  url 'https://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'https://flavio.tordini.org/minitube-ws/appcast.xml'
  name 'Minitube'
  homepage 'https://flavio.tordini.org/minitube'

  depends_on macos: '>= :sierra'

  app 'Minitube.app'
end
