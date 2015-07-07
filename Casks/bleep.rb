cask :v1 => 'bleep' do
  version :latest
  sha256 :no_check

  # utorrent.com is the official download host per the vendor homepage
  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  name 'Bleep'
  appcast 'https://bleeposx.bittorrent.com/appcast.xml',
          :sha256 => '266fc57b32cbbe67b46513eba330c1986681f767892d97ad66b0a61510d4aaf1'
  homepage 'http://www.bleep.pm/'
  license :gratis
  tags :vendor => 'BitTorrent'

  app 'Bleep.app'

  zap :delete => [
                  '~/Library/Application Support/Bleep',
                  '~/Library/Caches/com.bittorrent.bleep.osx',
                  '~/Library/Preferences/com.bittorrent.bleep.osx.plist',
                  '~/Library/Saved Application State/com.bittorrent.bleep.osx.savedState',
                 ]
end
