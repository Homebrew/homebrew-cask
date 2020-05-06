cask 'pocket-casts' do
  version '1.4'
  sha256 '905436b8221a7b514ebf713a278a96a389b3991183c5e2fd284b7d71b996c22e'

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
