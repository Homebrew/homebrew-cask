cask 'paintbrush' do
  version '2.2'
  sha256 '8cf110b7d9063f738dbcbbc3122e1125275adc06496eea2dbfdd79e2e916115f'

  url "https://downloads.sourceforge.net/paintbrush/Paintbrush%202.x/Paintbrush%20#{version}/Paintbrush-#{version}.zip"
  appcast "https://paintbrush.sourceforge.io/updates#{version.major}x.xml",
          checkpoint: '1dec7d587b2c7c806df31a1ac62ef27371dc7ea6034608aa9de1f216c58e1c18'
  name 'Paintbrush'
  homepage 'http://paintbrush.sourceforge.net/'

  app 'Paintbrush.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.soggywaffles.paintbrush.sfl*',
               '~/Library/Preferences/com.soggywaffles.Paintbrush.LSSharedFileList.plist',
               '~/Library/Preferences/com.soggywaffles.Paintbrush.plist',
               '~/Library/Caches/com.soggywaffles.Paintbrush',
             ]
end
