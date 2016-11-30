cask 'manico' do
  version '2.2'
  sha256 'b5e82b984d6b6a9146375bb7a64c0d597fcfeccef1cb07956bda64f699adcd8b'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml',
          checkpoint: '7278b1933bf356865c61422e7702dc0f6b21b85a1e94ba5b7a2deb04f3a6875a'
  name 'Manico'
  homepage 'https://manico.im/'

  app 'Manico.app'

  zap delete: [
                '~/Library/Containers/im.manico.Manico',
              ]
end
