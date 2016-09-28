cask 'manico' do
  version '2.1.1-350'
  sha256 '467983062a74a08d5f93b3afa3fe90e6024191bbc37e90e107943a56e63061bb'

  url "https://manico.im/static/Manico_#{version}.tar.gz"
  appcast 'https://manico.im/static/manico-official-appcast.xml',
          checkpoint: '33d9e389b8b5693a85532ce756721210fa77b325faa3149c260b3cdc06618d2a'
  name 'Manico'
  homepage 'https://manico.im/'
  license :commercial

  app 'Manico.app'

  zap delete: [
                '~/Library/Containers/im.manico.Manico',
              ]
end
