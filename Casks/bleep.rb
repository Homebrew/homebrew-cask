cask 'bleep' do
  version '1.1.3'
  sha256 '685a7f446c091e52a568a0d3333f40d5412830c6ae54d1038fe2f5df219633c2'

  # utorrent.com was verified as official when first introduced to the cask
  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  appcast 'https://bleeposx.bittorrent.com/appcast.xml',
          checkpoint: 'bc0518c59ecb182db88507556d4e5765723c41d5467219901487604d0800d0bf'
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
