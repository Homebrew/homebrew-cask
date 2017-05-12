cask 'grids' do
  version '4.5.6'
  sha256 '3d80066672470cef0b889ed540384a9733daf6fdab189f023f9753a54fca6d10'

  url "http://thegridsapp.com/bin/Grids_#{version}.dmg"
  appcast 'http://thegridsapp.com/appcast.json',
          checkpoint: '90d59bd1f2925bf6592c01f6e43df7daf5f23f71e69c044fe17f2b021b67126a'
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
