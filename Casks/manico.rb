cask 'manico' do
  version '2.2.1'
  sha256 'c8e8df0abf077c6ea6be2958d32bb42307500f959bb0c6dd3891b9f74646d6e3'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml',
          checkpoint: 'bbd976faec21b9bdff9e6b953713dec94674e9b2be2369e191e79d384bc29061'
  name 'Manico'
  homepage 'https://manico.im/'

  app 'Manico.app'

  zap delete: [
                '~/Library/Containers/im.manico.Manico',
              ]
end
