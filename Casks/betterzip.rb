cask :v1 => 'betterzip' do
  version '3.0.1'
  sha256 '8a462fd36470968e4f570ec9e8f7c4c21a564666086316f58a2bc3de82eb3043'

  url "http://macitbetter.com/dl/BetterZip-#{version}.zip"
  name 'BetterZip'
  appcast 'http://macitbetter.com/BetterZip3.rss',
          :sha256 => 'fe0b1be2acc6c53ae8933f5921144831ce31232a946cb165b1374896f6ad6a11'
  homepage 'http://macitbetter.com'
  license :commercial

  app 'BetterZip.app'

  zap :delete => '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
