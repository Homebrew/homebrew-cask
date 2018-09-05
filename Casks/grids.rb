cask 'grids' do
  version '4.10.1'
  sha256 'ac8298a8b91ae11c85ff6d131a4e11c1a595eb3c37f1027ed39b8585ac5e6470'

  url "http://thegridsapp.com/bin/Grids_#{version}.zip"
  appcast 'http://thegridsapp.com/appcast.json'
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
