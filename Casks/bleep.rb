cask 'bleep' do
  version '1.1.0'
  sha256 '7b28ab86de771e5b446769e385a7c5f689d3711a880f532fdd5db664ba46723c'

  # utorrent.com is the official download host per the vendor homepage
  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  appcast 'https://bleeposx.bittorrent.com/appcast.xml',
          :sha256 => '1a1f1b970294837f0f43752bfab8c15fb0e2a763910d2e21f5c4b98b415ffa39'
  name 'BitTorrent Bleep'
  homepage 'http://www.bleep.pm/'
  license :gratis

  app 'Bleep.app'

  zap :delete => [
                   '~/Library/Application Support/Bleep',
                   '~/Library/Caches/com.bittorrent.bleep.osx',
                   '~/Library/Preferences/com.bittorrent.bleep.osx.plist',
                   '~/Library/Saved Application State/com.bittorrent.bleep.osx.savedState',
                 ]
end
