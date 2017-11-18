cask 'grids' do
  version '4.5.13'
  sha256 '4646d63e7c50fd7530ee3a3ffc33422787047a61ec7b7ff941aafdf4c39a4b61'

  url "http://thegridsapp.com/bin/Grids_#{version}.dmg"
  appcast 'http://thegridsapp.com/appcast.json',
          checkpoint: 'aec99aa1a14d32ce960266a728daa2d89ac003559a30e9946db0c90a25c621f1'
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
