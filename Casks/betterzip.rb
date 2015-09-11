cask :v1 => 'betterzip' do
  version '3.0.3'
  sha256 '5bcce666ff501957cf535d13d156ef7e5da79f7af283a2f911ef7e959c847594'

  url "http://macitbetter.com/dl/BetterZip-#{version}.zip"
  name 'BetterZip'
  appcast 'http://macitbetter.com/BetterZip3.rss',
          :sha256 => 'e219c96ec87b7df24d997134efc056f027523021ff4f26b033286d1dd884abe0'
  homepage 'http://macitbetter.com'
  license :commercial

  app 'BetterZip.app'

  zap :delete => '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
