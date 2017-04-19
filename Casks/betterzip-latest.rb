cask 'betterzip-latest' do
  version :latest
  sha256 :no_check

  url 'https://macitbetter.com/BetterZip.zip'
  name 'BetterZip'
  homepage 'http://macitbetter.com'
  license :commercial

  depends_on macos: '>= mavericks'

  app 'BetterZip.app'

  zap delete: '~/Library/Preferences/com.macitbetter.betterzip.plist'
end
