cask 'pocket-casts' do
  version '0.9.4'
  sha256 '04eea0f1434598f8385e0bc320d4ac4a11e7dfc93228f1ef9a92982ca2081f49'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml',
          checkpoint: '70deef38c45ca95b95147207f261fab7811ff853dc3baf6dea6b73aa3c23f7cd'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  app 'Pocket Casts.app'
end
