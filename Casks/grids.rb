cask 'grids' do
  version '4.5.7'
  sha256 'd9de0935d83c8d3b18620e8fd5cd5aeaaab0512f6a29231e2ac04d727daa27b1'

  url "http://thegridsapp.com/bin/Grids_#{version}.dmg"
  appcast 'http://thegridsapp.com/appcast.json',
          checkpoint: 'f3a796bb0271c5f4f8f960dd151faa86c6bdbdda5f5df7c3a41c373db5ec31c7'
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
