cask 'grids' do
  version '4.7.2'
  sha256 '4c10dd55bfdb1e65940214b071a820c71649397d8ee96d1072e0deac7df25411'

  url "http://thegridsapp.com/bin/Grids_#{version}.zip"
  appcast 'http://thegridsapp.com/appcast.json',
          checkpoint: '601666540eb9e29094397a1aef398be6d8a35caebff4cd5d5cb57eb31900243d'
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
