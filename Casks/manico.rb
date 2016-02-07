cask 'manico' do
  version '2.0.1'
  sha256 '14171ca3d2b0dcebdbc63f2c3b905f54b1134455d835f3ba1dfebeca8bfa0f1b'

  url "http://manico.im/static/Manico_#{version}.dmg"
  appcast 'http://manico.im/static/manico-official-appcast.xml',
          checkpoint: '0c20ba7f38321babd46cde6d61497690aa17068ebb5d03b8e678240413a04f97'
  name 'Manico'
  homepage 'http://manico.im/'
  license :commercial

  app 'Manico.app'

  zap delete: [
                '~/Library/Containers/im.manico.Manico',
              ]
end
