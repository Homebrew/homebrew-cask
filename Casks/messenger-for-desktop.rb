cask 'messenger-for-desktop' do
  version '2.0.8'
  sha256 'c86d3454f5bce8913bb6c26b6dcd682d718490cf5d4b7ddf8c155e41a8acf7a3'

  # github.com/aluxian/Messenger-for-Desktop was verified as official when first introduced to the cask
  url "https://github.com/aluxian/Messenger-for-Desktop/releases/download/v#{version}/messengerfordesktop-#{version}-osx.dmg"
  appcast 'https://github.com/aluxian/Messenger-for-Desktop/releases.atom',
          checkpoint: 'f63d44651099d38a565f9368b05f1c4fc3cdfff2a322e865eb7a41cc63afd50f'
  name 'Messenger for Desktop'
  homepage 'https://messengerfordesktop.com/'

  auto_updates true

  app 'Messenger for Desktop.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/Messenger For Desktop*',
                '~/Library/Application Support/Messenger For Desktop',
                '~/Library/Caches/com.aluxian.messengerfd',
                '~/Library/Caches/com.aluxian.messengerfd.ShipIt',
                '~/Library/Cookies/com.aluxian.messengerfd.binarycookies',
                '~/Library/Preferences/ByHost/com.aluxian.messengerfd.ShipIt*',
                '~/Library/Preferences/com.aluxian.messengerfd.helper.plist',
                '~/Library/Preferences/com.aluxian.messengerfd.plist',
                '~/Library/Saved Application State/com.aluxian.messengerfd.savedState',
              ]
end
