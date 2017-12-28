cask 'paintbrush' do
  version '2.2.1'
  sha256 '96ee40ce8052ffdb687a187e74f22bcce2ab40430d8b4c2f4b1d2637b3ad21a3'

  url "https://downloads.sourceforge.net/paintbrush/Paintbrush%202.x/Paintbrush%20#{version}/Paintbrush-#{version}.zip"
  appcast "https://paintbrush.sourceforge.io/updates#{version.major}x.xml",
          checkpoint: '6bc468d2a34ae1fac111333bc3543620848e86db852549e2350df6a531fb0235'
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
