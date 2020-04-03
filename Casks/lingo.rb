cask 'lingo' do
  version '10.4,111'
  sha256 'c51761046995900485b90ec09a8f06dc7e5ae2db9f6b22fbeb025aecef5f3d30'

  # rink.hockeyapp.net/api/2/apps was verified as official when first introduced to the cask
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
