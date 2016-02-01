cask 'bleep' do
  version '1.1.0'
  sha256 '7b28ab86de771e5b446769e385a7c5f689d3711a880f532fdd5db664ba46723c'

  # utorrent.com is the official download host per the vendor homepage
  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  appcast 'https://bleeposx.bittorrent.com/appcast.xml',
          checkpoint: '11a834244e4ca4c4fce08580760fb77c05304f670d72755604e45cea460bc81e'
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
