cask 'smooze' do
  version '1.4.4'
  sha256 '0d987c5c65ef70981c5bc16d915ce906d3a9679c38e66901d7de83ae1aa62e5b'

  url 'https://smooze.co/updates/Smooze.dmg'
  appcast 'https://smooze.co/updates/update.xml',
          checkpoint: 'e652129adc9c9d190d3da9f5b4a16d9c46ea82e176b39685a409253a1a343fa0'
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
