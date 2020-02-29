cask 'lingo' do
  version '10.3,111'
  sha256 '14841d33d6c753b47a0420d6433dfac8bcc764a3fc30b5ac9c5a1a718f87145e'

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
