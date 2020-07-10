cask 'qobuz' do
  version '5.4.3-b006'
  sha256 'e6b0b00f1c5d34647755e51e8806e2b49f88b3dcf5cb68457a3d24974e43b328'

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
