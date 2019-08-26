cask 'lingo' do
  version '9.0'
  sha256 'de6fe2e6b0084e5df509f07650d48d35b3679b06c0745c6b3a2b4b39c7158558'

  # nounproject.s3.amazonaws.com/lingo was verified as official when first introduced to the cask
  url 'https://nounproject.s3.amazonaws.com/lingo/Lingo.dmg'
  appcast 'https://rink.hockeyapp.net/api/2/apps/7d71478daf6447bda4094e216e97b0cf'
  name 'Lingo'
  homepage 'https://www.lingoapp.com/'

  app 'Lingo.app'

  zap trash: [
               '~/Library/Preferences/com.lingoapp.Lingo.plist',
               '~/Library/Application Support/com.lingoapp.Lingo',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lingoapp.lingo.sfl*',
             ]
end
