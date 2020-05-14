cask 'lingo' do
  version '10.5,111'
  sha256 'a92fa560723151dbb6a9a2450e6c73dcca43c4b1103153c519d2a258c2608197'

  # rink.hockeyapp.net/api/2/apps/ was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/7d71478daf6447bda4094e216e97b0cf/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://www.lingoapp.com/mac/appcast'
  name 'Lingo'
  homepage 'https://www.lingoapp.com/'

  app 'Lingo.app'

  zap trash: [
               '~/Library/Preferences/com.lingoapp.Lingo.plist',
               '~/Library/Application Support/com.lingoapp.Lingo',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lingoapp.lingo.sfl*',
             ]
end
