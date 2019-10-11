cask 'manico' do
  version '2.6'
  sha256 '9caca1926989bcebe7b768923a69b990ce48b92122bcea6029a6b8adfa63b4d5'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml'
  name 'Manico'
  homepage 'https://manico.im/'

  depends_on macos: '>= :sierra'

  app 'Manico.app'

  zap trash: [
               '~/Library/Containers/im.manico.Manico',
             ]
end
