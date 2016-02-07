cask 'betterzip' do
  version '3.0.4'
  sha256 'ada7766dacd7db3ce4dbf26537f1876694773cfb8f14842e9aaa5824fd64be3a'

  url "http://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast 'http://macitbetter.com/BetterZip3.rss',
          checkpoint: 'e9083065f10327fb1ab34dc0ba1f8ca5eb33e08dc173e1774b5bf3437d0856ef'
  name 'BetterZip'
  homepage 'http://macitbetter.com'
  license :commercial

  app 'BetterZip.app'

  zap delete: '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
