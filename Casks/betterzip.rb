cask 'betterzip' do
  version '3.1'
  sha256 'dc7e39b6d13c1c6874cea6307e228d7028f18c2eaa687c78caa1492125296d99'

  url "http://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast 'http://macitbetter.com/BetterZip3.rss',
          checkpoint: 'ab75e5da2af4722b879c357b1e88930562472d62ad200e4b1fc498df56758b95'
  name 'BetterZip'
  homepage 'http://macitbetter.com'
  license :commercial

  app 'BetterZip.app'

  zap delete: '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
