cask 'kindle' do
  version '44033'
  sha256 'f411c7ca8a7078c6fabb28884761101544208e658394e3fde313745382e66748'

  url "http://kindleformac.amazon.com/#{version}/KindleForMac-#{version}.dmg"
  name 'Kindle for Mac'
  homepage 'https://www.amazon.com/gp/digital/fiona/kcp-landing-page'

  app 'Kindle.app'

  zap delete: [
                '~/Library/Preferences/com.amazon.Kindle.plist',
                '~/Library/Application Support/Kindle/',
                '~/Library/Saved Application State/com.amazon.Kindle.savedState/',
                '~/Library/Caches/com.amazon.Kindle-Crash-Reporter/',
              ]
end
