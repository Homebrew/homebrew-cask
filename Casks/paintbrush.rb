cask 'paintbrush' do
  version '2.4.2'
  sha256 'ee1e3175870f9c4271706e646d9a5312d6e098c22dbdc40d32525f9915706eec'

  # downloads.sourceforge.net/paintbrush was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/paintbrush/Paintbrush%202.x/Paintbrush%20#{version}/Paintbrush-#{version}.zip"
  appcast "https://paintbrush.sourceforge.io/updates#{version.major}x.xml"
  name 'Paintbrush'
  homepage 'https://paintbrush.sourceforge.io/'

  app 'Paintbrush.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.soggywaffles.paintbrush.sfl*',
               '~/Library/Preferences/com.soggywaffles.Paintbrush.LSSharedFileList.plist',
               '~/Library/Preferences/com.soggywaffles.Paintbrush.plist',
               '~/Library/Caches/com.soggywaffles.Paintbrush',
             ]
end
