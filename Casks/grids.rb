cask 'grids' do
  version '4.4'
  sha256 'c0380e8178a865393ed5f758acb8c8ac51e08b0a03319107975d4e406d6c8757'

  url "http://thegridsapp.com/bin/Grids_#{version}.dmg"
  appcast 'http://thegridsapp.com/appcast.json',
          checkpoint: '5d3f42dd790899139a69b3c3901d5b0ac5503696c493cb04308da58c134963e5'
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
