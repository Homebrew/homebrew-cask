cask 'manico' do
  version '2.4.1'
  sha256 '2ff4a2aa66b69f1b668469dc636e1f1b92836d299761426a0f2de40d6e138104'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml',
          checkpoint: 'd779322123d9beb9ed7b161035e3495a8d21d23b3f897ec6f121d0d145dd18af'
  name 'Manico'
  homepage 'https://manico.im/'

  app 'Manico.app'

  zap trash: [
               '~/Library/Containers/im.manico.Manico',
             ]
end
