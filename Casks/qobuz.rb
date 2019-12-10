cask 'qobuz' do
  version '5.3.0-b005'
  sha256 '05b2a312c9ddeaaf6ed1ceabca02b420cc250b8d9ad07eced86c3d159b6f10b1'

  url "https://desktop.qobuz.com/releases/darwin/x64/elCapitan_sierra/#{version}/Qobuz.dmg"
  name 'Qobuz'
  homepage 'https://www.qobuz.com/applications'

  auto_updates true

  app 'Qobuz.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qobuz.qobuzdesktop.sfl*',
               '~/Library/Application Support/QobuzDesktop',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.qobuz.QobuzDesktop',
               '~/Library/Caches/com.qobuz.QobuzDesktop',
               '~/Library/Logs/QobuzDesktop',
               '~/Library/Preferences/com.qobuz.QobuzDesktop.plist',
             ]
end
