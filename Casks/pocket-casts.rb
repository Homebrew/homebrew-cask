cask 'pocket-casts' do
  version '1.0'
  sha256 '796211e2821081a0051ca5a1f1e783b98f40631a795fb52a80adf2dbf7ef71c8'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  app 'Pocket Casts.app'
end
