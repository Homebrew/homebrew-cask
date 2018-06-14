cask 'pocket-casts' do
  version '0.9.8'
  sha256 'af64a8f2d7cf9cf669c338ffb48f7430c332db09cdfa16a891055ad671fdb8fe'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  app 'Pocket Casts.app'
end
