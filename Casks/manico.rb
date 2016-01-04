cask 'manico' do
  version '2.0.1'
  sha256 '14171ca3d2b0dcebdbc63f2c3b905f54b1134455d835f3ba1dfebeca8bfa0f1b'

  url "http://manico.im/static/Manico_#{version}.dmg"
  appcast 'http://manico.im/static/manico-official-appcast.xml',
          :sha256 => '0a471a6f997a468135c993ac3e625227854c99c512f5a78460174436d15d0284'
  name 'Manico'
  homepage 'http://manico.im/'
  license :commercial

  app 'Manico.app'

  zap :delete => [
                   '~/Library/Containers/im.manico.Manico'
                 ]
end
