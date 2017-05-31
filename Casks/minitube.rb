cask 'minitube' do
  version '2.7'
  sha256 '54e11efb1498309ee4d9331fca327f987552806b7c2633e7f1a68a9bed2adeae'

  url 'http://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'http://flavio.tordini.org/minitube-ws/appcast.xml',
          checkpoint: '4f982ecfcbe80a5c1f4c894812dc9a2bbd011d1c70fb961ff2f355825c858c8e'
  name 'Minitube'
  homepage 'http://flavio.tordini.org/minitube'

  app 'Minitube.app'
end
