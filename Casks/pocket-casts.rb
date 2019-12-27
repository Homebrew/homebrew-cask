cask 'pocket-casts' do
  version '1.3.1'
  sha256 '788309d86fac93b273d0309aac3ffd6c7a1f3bc3f76096fcab3df5ac232039ac'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  depends_on macos: '>= :sierra'

  app 'Pocket Casts.app'
end
