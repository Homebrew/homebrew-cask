cask :v1 => 'betterzip' do
  version '3.0.2'
  sha256 'f080e827353743ae4beb1e5606f53e3b026f6deafe1834445f9b492a996045d8'

  url "http://macitbetter.com/dl/BetterZip-#{version}.zip"
  name 'BetterZip'
  appcast 'http://macitbetter.com/BetterZip3.rss',
          :sha256 => '3cf5127339a91d7bd03b6cacf2794d6d2badf7954741312d350ccc3e008a26ae'
  homepage 'http://macitbetter.com'
  license :commercial

  app 'BetterZip.app'

  zap :delete => '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
