cask 'bleep' do
  version '1.1.2'
  sha256 'd5f2a6d02b254a006226bb2033b9307eb7c3a8ead20bf387c4a7b53544c82730'

  # utorrent.com was verified as official when first introduced to the cask
  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  appcast 'https://bleeposx.bittorrent.com/appcast.xml',
          checkpoint: '78677f349b42fa8a2b511f85887aa7e60a48d44586377c5cd502c5b4267f3fad'
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
