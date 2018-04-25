cask 'pocket-casts' do
  version '0.9.7'
  sha256 'cfd999dca93177cc5ab43b4ea22cee919161297776e4595932661cc5ded33e0c'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml',
          checkpoint: '3b7161199065576405af886b184c595c1359cc0f6a322934f0d01cf5b05877a7'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  app 'Pocket Casts.app'
end
