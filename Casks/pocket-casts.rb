cask 'pocket-casts' do
  version '0.9.3'
  sha256 '4af0278884064bad621f242699cda3ba0f0c00e57b855f1b63063db6ac267e80'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml',
          checkpoint: '00117ca16ba52210f3f4d51fb9f06f13ffe9ca3949ef1722e2d6f1a731340d77'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  app 'Pocket Casts.app'
end
