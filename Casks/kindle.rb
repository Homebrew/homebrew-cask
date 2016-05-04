cask 'kindle' do
  version '43056'
  sha256 'bb2a148485bc19fecbfed68ea7e6d37cbe9f25a557aba446c3254a83f7433f5e'

  url "http://kindleformac.amazon.com/#{version}/KindleForMac-#{version}.dmg"
  name 'Kindle for Mac'
  homepage 'https://www.amazon.com/gp/digital/fiona/kcp-landing-page'
  license :gratis

  app 'Kindle.app'

  zap delete: [
                '~/Library/Preferences/com.amazon.Kindle.plist',
                '~/Library/Application Support/Kindle/',
                '~/Library/Saved Application State/com.amazon.Kindle.savedState/',
                '~/Library/Caches/com.amazon.Kindle-Crash-Reporter/',
              ]
end
