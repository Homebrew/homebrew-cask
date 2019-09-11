cask 'manico' do
  version '2.5.2'
  sha256 '1f1cef69f58218156ff26899d31b162c38d8a3af54f3bb7e7881d57f6eb114a6'

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
