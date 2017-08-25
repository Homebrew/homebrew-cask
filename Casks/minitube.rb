cask 'minitube' do
  version '2.7'
  sha256 '982f89c34ac425b50ffc79c2a586bacb1a6c3b501ec8294ddca6595ea2baa08e'

  url 'http://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'http://flavio.tordini.org/minitube-ws/appcast.xml',
          checkpoint: '4f982ecfcbe80a5c1f4c894812dc9a2bbd011d1c70fb961ff2f355825c858c8e'
  name 'Minitube'
  homepage 'http://flavio.tordini.org/minitube'

  app 'Minitube.app'
end
