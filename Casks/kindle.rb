cask 'kindle' do
  version '47032'
  sha256 'e6a26f26079c4881dd8ee59d7b7adb672297de2e1d0422f7471d172b984a3886'

  # s3.amazonaws.com/kindleformac was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/kindleformac/#{version}/KindleForMac-#{version}.dmg"
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
