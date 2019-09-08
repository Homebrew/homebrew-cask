cask 'grids' do
  version '5.6'
  sha256 '44270ec0cddb535f1bc1375c20fa2e0b79fab6329829c8652e2f64a267e7edd0'

  url "https://gridsapp.net/bin/Grids_#{version}.zip"
  appcast 'https://gridsapp.net/appcast.json'
  name 'Grids'
  homepage 'https://gridsapp.net/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Grids.app'

  uninstall quit: 'com.thinktimecreations.Grids'

  zap trash: [
               '~/Library/Application Support/ThinkTimeCreations/Grids',
               '~/Library/Preferences/com.thinktimecreations.Grids.plist',
             ]
end
