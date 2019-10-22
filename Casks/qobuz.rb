cask 'qobuz' do
  version '5.1.0-b003'
  sha256 'bf5c0a6a47c56b5192c07d120d4849feb4e02406d463cded8f771e0689210c6d'

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
