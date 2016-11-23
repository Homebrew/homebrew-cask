cask 'manico' do
  version '2.1.1'
  sha256 'bc8aaa38bbf2a0e7bf505fcaa53aed5406363af27fbb32520ad5c715d862a1aa'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml',
          checkpoint: 'd94ba25e2411e694f7080c40e12daa994e78cc5f3d257a96a73a8973d2a89ed3'
  name 'Manico'
  homepage 'https://manico.im/'

  app 'Manico.app'

  zap delete: [
                '~/Library/Containers/im.manico.Manico',
              ]
end
