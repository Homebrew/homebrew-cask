cask 'pocket-casts' do
  version '1.1'
  sha256 'c1e81bcde7a3850a5d101ec68e2e028d5c7564c1fd6fbeb52748f0c4f950dd7b'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  app 'Pocket Casts.app'
end
