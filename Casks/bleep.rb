cask 'bleep' do
  version '1.1.5'
  sha256 'b04ff847d00490354882ec9ca554e4b249483300665cec2735798aa8b8e12b3a'

  # utorrent.com was verified as official when first introduced to the cask
  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  appcast 'https://bleeposx.bittorrent.com/appcast.xml',
          checkpoint: 'e6b158babeedf088fc5883866c20259a76bfb5c826ae3a92ed6fa8ebaf15bb84'
  name 'BitTorrent Bleep'
  homepage 'http://www.bleep.pm/'

  app 'Bleep.app'

  zap delete: [
                '~/Library/Application Support/Bleep',
                '~/Library/Caches/com.bittorrent.bleep.osx',
                '~/Library/Preferences/com.bittorrent.bleep.osx.plist',
                '~/Library/Saved Application State/com.bittorrent.bleep.osx.savedState',
              ]
end
