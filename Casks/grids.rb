cask 'grids' do
  version '4.6.1'
  sha256 '92d9ee8c765776582c36340eec7812609e9fc603663895ad6e13d32c7d6c640d'

  url "http://thegridsapp.com/bin/Grids_#{version}.zip"
  appcast 'http://thegridsapp.com/appcast.json',
          checkpoint: '8a3b6e9e1992e0bcb3d5131b3471e094fa70095cb81427a6b3cb1ed5fadff494'
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
