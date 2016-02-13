cask 'bleep' do
  version '1.1.2'
  sha256 'c5155e585ae2583095dd29155f419c8ecc4e7f862144c36fd7e55be8e32c5216'

  # utorrent.com was verified as official when first introduced to the cask
  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  appcast 'https://bleeposx.bittorrent.com/appcast.xml',
          checkpoint: 'aa00fc13f371df0ebc108d087610dd5527734bb86c671956e0d19894c813eec2'
  name 'BitTorrent Bleep'
  homepage 'http://www.bleep.pm/'
  license :gratis

  app 'Bleep.app'

  zap delete: [
                '~/Library/Application Support/Bleep',
                '~/Library/Caches/com.bittorrent.bleep.osx',
                '~/Library/Preferences/com.bittorrent.bleep.osx.plist',
                '~/Library/Saved Application State/com.bittorrent.bleep.osx.savedState',
              ]
end
