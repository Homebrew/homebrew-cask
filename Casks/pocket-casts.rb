cask 'pocket-casts' do
  version '1.0'
  sha256 '0d59476b30c2ddff1c361b1de9a16948fa86b900701624de14a8e6bce77574d4'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  app 'Pocket Casts.app'
end
