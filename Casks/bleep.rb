cask :v1 => 'bleep' do
  version :latest
  sha256 :no_check

  # utorrent.com is the official download host per the vendor homepage
  url 'https://download-new.utorrent.com/endpoint/bleep/os/osx/track/stable/'
  name 'Bleep'
  appcast 'https://bleeposx.bittorrent.com/appcast.xml',
          :sha256 => '75d89f7c0d02e912eac9a5dcca9d401dcceee4f89ce355be5a3fd566e1ef7a31'
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
