cask 'minitube' do
  version '2.6'
  sha256 'e080005095a9b8828521dc91160c2251aebeaf63c873c95900a1db46b96f139c'

  url 'http://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'http://flavio.tordini.org/minitube-ws/appcast.xml',
          checkpoint: '4e9d1b9a1b2a43828e11006bede5f56f2c2af02539224fa8fe6f2f9972cc523d'
  name 'Minitube'
  homepage 'http://flavio.tordini.org/minitube'

  app 'Minitube.app'
end
