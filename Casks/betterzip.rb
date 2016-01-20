cask 'betterzip' do
  version '3.0.3'
  sha256 '5bcce666ff501957cf535d13d156ef7e5da79f7af283a2f911ef7e959c847594'

  url "http://macitbetter.com/dl/BetterZip-#{version}.zip"
  appcast 'http://macitbetter.com/BetterZip3.rss',
          checkpoint: '1325a3e93df91dfe6a460546b806ce46fa05f649bffe4b291424d74e4136c8db'
  name 'BetterZip'
  homepage 'http://macitbetter.com'
  license :commercial

  app 'BetterZip.app'

  zap delete: '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
