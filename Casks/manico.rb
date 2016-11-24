cask 'manico' do
  version '2.1.2'
  sha256 'b446e39cc532576c526e769934132be64687a80425149e3921563a0f183ad22f'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml',
          checkpoint: '8add2075c7834075c24831c563ac3bad65f63eeb937de17f0211fab9a0d996b2'
  name 'Manico'
  homepage 'https://manico.im/'

  app 'Manico.app'

  zap delete: [
                '~/Library/Containers/im.manico.Manico',
              ]
end
