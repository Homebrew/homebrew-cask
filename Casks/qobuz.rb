cask 'qobuz' do
  version '5.4.2-b010'
  sha256 'cdc95f818418fe85e9ec6104ed90004365df8b1b453cdf6c7f4ae318ce237ae3'

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
