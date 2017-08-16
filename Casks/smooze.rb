cask 'smooze' do
  version '1.3.4'
  sha256 '3efea4db727c249f598371200857ead564a99f75a90dc4b188268d39dfc079e5'

  url 'https://smooze.co/updates/Smooze.dmg'
  appcast 'https://smooze.co/updates/update.xml',
          checkpoint: 'a893c677194ee3696669662b59bfcfa14abe8da1e1fed298c026bebdac92c316'
  name 'Smooze'
  homepage 'https://smooze.co/'

  auto_updates true

  app 'Smooze.app'

  uninstall login_item: 'Smooze',
            quit:       'co.smooze.macos'

  zap delete: [
                '~/Library/Caches/co.smooze.macos',
                '~/Library/Caches/io.fabric.sdk.mac.data/co.smooze.macos',
              ],
      trash:  [
                '~/Library/Application Support/co.smooze.macos',
                '~/Library/Application Support/Smooze',
                '~/Library/Preferences/co.smooze.macos.plist',
              ]
end
