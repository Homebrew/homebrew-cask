cask 'manico' do
  version '2.7.2,386'
  sha256 '209fd0cb5e5b72d7b1876ab4c80b045ab34bf069a04dbce52d1432da9aa30e5f'

  url "https://manico.im/api/release_manager/downloads/im.manico.Manico/#{version.after_comma}.zip"
  appcast 'https://manico.im/api/release_manager/im.manico.Manico.xml'
  name 'Manico'
  homepage 'https://manico.im/'

  depends_on macos: '>= :sierra'

  app 'Manico.app'

  zap trash: [
               '~/Library/Containers/im.manico.Manico',
             ]
end
