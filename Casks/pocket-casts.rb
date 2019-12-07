cask 'pocket-casts' do
  version '1.3'
  sha256 'fef5f2054d025ada804eca9bb3af0447c3f90787c1ddd6d80fd9f83f72b1bcf5'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  depends_on macos: '>= :sierra'

  app 'Pocket Casts.app'
end
