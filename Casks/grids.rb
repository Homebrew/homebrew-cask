cask 'grids' do
  version '4.9'
  sha256 '4c6dc7865f8df3b1d0861c7fcf7f3944a39f6768e74dbf3f47e66aac4cd72bb0'

  url "http://thegridsapp.com/bin/Grids_#{version}.zip"
  appcast 'http://thegridsapp.com/appcast.json',
          checkpoint: '6b843c86f2455792329c473bfb9f29f1db72244450c3ec4a10c56f7ff70f4352'
  name 'Grids'
  homepage 'http://thegridsapp.com/'

  auto_updates true

  app 'Grids.app'

  uninstall quit: 'com.thinktimecreations.Grids'

  zap trash: [
               '~/Library/Application Support/ThinkTimeCreations/Grids',
               '~/Library/Preferences/com.thinktimecreations.Grids.plist',
             ]
end
