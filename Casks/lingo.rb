cask 'lingo' do
  version '9.2'
  sha256 'ef642bf866093fa5719aeca4fe2b79d83e525dd9dbfb1d7f0835dbfa2e6ae201'

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
