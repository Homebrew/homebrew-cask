cask 'betterzip' do
  version '3.0.3'
  sha256 '5bcce666ff501957cf535d13d156ef7e5da79f7af283a2f911ef7e959c847594'

  url "http://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast 'http://macitbetter.com/BetterZip3.rss',
          :sha256 => '77f080f0b2276b8c66b331b5bd39c51d204c9e230ba2b3f22fc4c9b9b48cb453'
  name 'BetterZip'
  homepage 'http://macitbetter.com'
  license :commercial

  app 'BetterZip.app'

  zap :delete => '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
