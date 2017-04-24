cask 'grids' do
  version '4.5.2'
  sha256 '6e8a669b804caebce0c25206c1a4825d03f5f42e58480f223f69a0621d5b8541'

  url "http://thegridsapp.com/bin/Grids_#{version}.dmg"
  appcast 'http://thegridsapp.com/appcast.json',
          checkpoint: 'b2179adb47b181e99b7e55a1c3cf8b9978f92ed9baaf7816b96507e070ce8627'
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
