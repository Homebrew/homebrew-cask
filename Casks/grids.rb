cask 'grids' do
  version '4.5.9'
  sha256 '0198696f2110eaab4e97001de5a88d1242572f646b17e2168af567dc88fcd458'

  url "http://thegridsapp.com/bin/Grids_#{version}.dmg"
  appcast 'http://thegridsapp.com/appcast.json',
          checkpoint: 'f844ed9e6995c41adf9cff2837b7da464cf2b18162107c572820ffaab8c13f09'
  name 'Grids'
  homepage 'http://thegridsapp.com/'

  auto_updates true

  app 'Grids.app'

  uninstall quit: 'com.thinktimecreations.Grids'

  zap delete: [
                '~/Library/Application Support/ThinkTimeCreations/Grids',
                '~/Library/Preferences/com.thinktimecreations.Grids.plist',
              ]
end
