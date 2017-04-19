cask 'minitube' do
  version '2.6'
  sha256 'd60cf2e11b07cfa14f69aa0881a835f8946ff12d180a5d7bdbbf20dd307a235a'

  url 'http://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'http://flavio.tordini.org/minitube-ws/appcast.xml',
          checkpoint: '4e9d1b9a1b2a43828e11006bede5f56f2c2af02539224fa8fe6f2f9972cc523d'
  name 'Minitube'
  homepage 'http://flavio.tordini.org/minitube'

  app 'Minitube.app'
end
