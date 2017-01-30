cask 'kindle' do
  version '46083'
  sha256 '2105e350b1b31cf8ccc4e35468c5ae42c7b34f7c7bbfe3b29677d6c731862328'

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
