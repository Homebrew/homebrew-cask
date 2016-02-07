cask 'kindle' do
  version '41015'
  sha256 '1c15ce4df69044dc9d2d3562b7f5a8589b65efa5b8e64bc2bcdd7ed41c05df38'

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
