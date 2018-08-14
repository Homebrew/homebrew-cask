cask 'manico' do
  version '2.4.1'
  sha256 '2ff4a2aa66b69f1b668469dc636e1f1b92836d299761426a0f2de40d6e138104'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml'
  name 'Manico'
  homepage 'https://manico.im/'

  app 'Manico.app'

  zap trash: [
               '~/Library/Containers/im.manico.Manico',
             ]
end
