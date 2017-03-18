cask 'messenger-for-desktop' do
  version '2.0.6'
  sha256 'cd013a62c919e960555b267402ef6f79c10973ec78222eeb3ab707a13f38d275'

  # github.com/Aluxian/Facebook-Messenger-Desktop was verified as official when first introduced to the cask
  url "https://github.com/Aluxian/Facebook-Messenger-Desktop/releases/download/v#{version}/messengerfordesktop-#{version}-osx.dmg"
  appcast 'https://github.com/Aluxian/Facebook-Messenger-Desktop/releases.atom',
          checkpoint: '3f77603c5d2b79e63a66044fcbc9a11c309c692282e911eb2e209c418b72e56c'
  name 'Messenger for Desktop'
  homepage 'https://messengerfordesktop.com/'

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
