cask :v1 => 'bleep' do
  version :latest
  sha256 :no_check

  # utorrent.com is the official download host per the vendor homepage
  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  name 'Bleep'
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
