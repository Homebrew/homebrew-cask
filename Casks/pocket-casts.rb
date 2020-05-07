cask 'pocket-casts' do
  version '1.4.1'
  sha256 'a64d7b6d8826b2ce51d8f436a4d8f48d20aa4e00f00d4bc4aee1dac888b325a6'

  url 'https://static.pocketcasts.com/mac/PocketCasts.zip'
  appcast 'https://static2.pocketcasts.com/mac/appcast.xml'
  name 'Pocket Casts'
  homepage 'https://play.pocketcasts.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Pocket Casts.app'

  zap trash: [
               '~/Library/Application Support/au.com.shiftyjelly.PocketCasts',
               '~/Library/Caches/au.com.shiftyjelly.PocketCasts',
               '~/Library/Preferences/au.com.shiftyjelly.PocketCasts.plist',
             ]
end
