cask 'manico' do
  version '2.3'
  sha256 'ae4c584584020ec25f0d288a69fdde493d5089acb0cf8c8acb02137aceed80d0'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml',
          checkpoint: 'e733760e8d481702aa2949afe40b5b50fa0984f75033e6a0f6f26f6c8d71ec45'
  name 'Manico'
  homepage 'https://manico.im/'

  app 'Manico.app'

  zap delete: [
                '~/Library/Containers/im.manico.Manico',
              ]
end
