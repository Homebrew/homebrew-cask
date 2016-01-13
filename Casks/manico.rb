cask 'manico' do
  version '2.0.1'
  sha256 '14171ca3d2b0dcebdbc63f2c3b905f54b1134455d835f3ba1dfebeca8bfa0f1b'

  url "http://manico.im/static/Manico_#{version}.dmg"
  appcast 'http://manico.im/static/manico-official-appcast.xml',
          :checkpoint => 'c4f9e5448fd3ee32d8247c85e9bb770cc908686d6ea1649b8d0ccf4f07b7ca36'
  name 'Manico'
  homepage 'http://manico.im/'
  license :commercial

  app 'Manico.app'

  zap :delete => [
                   '~/Library/Containers/im.manico.Manico'
                 ]
end
