cask :v1 => 'djay-pro' do
  version '1.1.3-201506261526'
  sha256 '47bb67196483e684ce3009088886e915fb9e83049fc263d3cc96d38755f5185c'

  url "http://download.algoriddim.com/djay/#{version.sub(%r{.*?-},'')}/djay_Pro_#{version.sub(%r{-\d+$},'')}.zip"
  name 'djay Pro'
  appcast 'https://www.algoriddim.com/djay-mac/releasenotes/appcast',
          :sha256 => '34da66c26e576ea02d0fbf42e1a655de5752e5389b176b7af18856ef7b202e66',
          :format => :sparkle
  homepage 'http://algoriddim.com/djay-mac'
  license :commercial
  tags :vendor => 'algoriddim'

  app 'djay Pro.app'
end
