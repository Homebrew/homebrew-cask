cask 'betterzip' do
  version '3.0.4'
  sha256 'ada7766dacd7db3ce4dbf26537f1876694773cfb8f14842e9aaa5824fd64be3a'

  url "http://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast 'http://macitbetter.com/BetterZip3.rss',
          checkpoint: 'a2c1846067eb9a819bb9f19f036ac32ed65df0061357a89f6f53e563b2f518d7'
  name 'BetterZip'
  homepage 'http://macitbetter.com'
  license :commercial

  app 'BetterZip.app'

  zap delete: '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
