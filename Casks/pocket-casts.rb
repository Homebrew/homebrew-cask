cask 'pocket-casts' do
  version '1.4.2'
  sha256 '7cda4d542a4a977544925c3ff7d1accea2d131a81c8535283dd0750b8576da0a'

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
