cask :v1 => 'betterzip' do
  version :latest
  sha256 :no_check

  url 'http://macitbetter.com/BetterZip.zip'
  name 'BetterZip'
  appcast 'http://macitbetter.com/BetterZip2.rss',
          :sha256 => '63e78ce25d5d8f3f75fdb5a9b51f55a54c4d93e98393ab45da32c22a0fb69205'
  homepage 'http://macitbetter.com'
  license :commercial

  app 'BetterZip.app'

  zap :delete => '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
