cask 'pocket-casts' do
  version '1.2'
  sha256 '119910325622630223467ec3e1188b5e63b34b2afbaf6bf798793e179b06db25'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  depends_on macos: '>= :sierra'

  app 'Pocket Casts.app'
end
