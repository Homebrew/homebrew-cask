cask 'paintbrush' do
  version '2.1.2'
  sha256 '3bf18908a191b65efec2a15af0c5f5e95f76e1ec00d71063e235a146b9f6c417'

  url "https://downloads.sourceforge.net/paintbrush/Paintbrush%202.x/Paintbrush%20#{version}/Paintbrush-#{version}.zip"
  appcast "https://paintbrush.sourceforge.io/updates#{version.major}x.xml",
          checkpoint: '776d288198003cdbdc854c58ecf5a89afc6676c56aaa2c66fdfc4ea9646e8fd6'
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
