cask 'pocket-casts' do
  version '0.9.9'
  sha256 '5febb76c5ad67167c5fc73b461806e763c34ae1219368f54cf1e25519b07132b'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  app 'Pocket Casts.app'
end
