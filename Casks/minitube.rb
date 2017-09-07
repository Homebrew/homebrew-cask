cask 'minitube' do
  version '2.8'
  sha256 '982f89c34ac425b50ffc79c2a586bacb1a6c3b501ec8294ddca6595ea2baa08e'

  url 'http://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'http://flavio.tordini.org/minitube-ws/appcast.xml',
          checkpoint: '9135952d27429f3e81c1aaea2546a194df9cb29abfe180ad805ab3f9b18c6b9c'
  name 'Minitube'
  homepage 'http://flavio.tordini.org/minitube'

  app 'Minitube.app'
end
