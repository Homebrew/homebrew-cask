cask 'grandperspective' do
  version '2.5.1'
  sha256 '8c418aa0b3db3562631ae88e1128094243c087fccca0bc2260863d8e3e5a57e4'

  # downloads.sourceforge.net/grandperspectiv/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/grandperspectiv/grandperspective/#{version}/GrandPerspective-#{version.dots_to_underscores}.dmg"
  appcast 'https://sourceforge.net/projects/grandperspectiv/rss?path=/grandperspective'
  name 'GrandPerspective'
  homepage 'https://grandperspectiv.sourceforge.io/'

  app 'GrandPerspective.app'

  zap trash: [
               '~/Library/Application Scripts/net.courceforge.grandperspectiv',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.sourceforge.grandperspectiv.sfl2',
               '~/Library/Containers/net.sourceforge.grandperspectiv',
               '~/Library/Preferences/net.sourceforge.grandperspectiv.plist',
             ]
end
