cask 'pocket-casts' do
  version '0.9.7'
  sha256 'cfd999dca93177cc5ab43b4ea22cee919161297776e4595932661cc5ded33e0c'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  app 'Pocket Casts.app'
end
