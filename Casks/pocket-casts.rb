cask 'pocket-casts' do
  version '1.3.2'
  sha256 '2846ab178c671147838497426952ef8160daab8acc0c16e8abdb578efb5e7d20'

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
