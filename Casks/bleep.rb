cask 'bleep' do
  version '1.1.5'
  sha256 '57a6bf628233fd9a9aa3883f8f46b40907c7236a3e4ce279e2007f8344dd053e'

  # utorrent.com was verified as official when first introduced to the cask
  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  appcast 'https://bleeposx.bittorrent.com/appcast.xml',
          checkpoint: 'e52f7505c14af6358813d60f15abd805e570b50a10a21624e95a95ee46556c77'
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
