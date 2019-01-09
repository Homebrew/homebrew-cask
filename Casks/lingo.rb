cask 'lingo' do
  version '4.4'
  sha256 'd8704fd5ac6231d1378e0122e3ccc4d7698321f768be8665d3430deb0b1dd36a'

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
