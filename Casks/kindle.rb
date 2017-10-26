cask 'kindle' do
  version '48016'
  sha256 '96acc8fed585c2759f6e001dac4ce91b276147f7866032d2890fac9614cf54e1'

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
