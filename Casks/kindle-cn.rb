cask 'kindle-cn' do
  version '55091'
  sha256 'fac64880d88cb5e3e9d52c4af5d63858c92d3fd88de874861121e0d004d27c10'

  # images-cn.ssl-images-amazon.com was verified as official when first introduced to the cask
  url "https://images-cn.ssl-images-amazon.com/images/G/28/kindle/mazama/mac/#{version}/KindleForMac-#{version}.dmg"
  appcast 'https://www.amazon.cn/gp/digital/fiona/kcp-landing-page/'
  name 'Kindle for Mac'
  homepage 'https://www.amazon.cn/gp/digital/fiona/kcp-landing-page/'

  app 'Kindle.app'

  zap trash: [
               '~/Library/Preferences/com.amazon.Kindle.plist',
               '~/Library/Application Support/Kindle/',
               '~/Library/Saved Application State/com.amazon.Kindle.savedState/',
               '~/Library/Caches/com.amazon.Kindle-Crash-Reporter/',
             ]
end
