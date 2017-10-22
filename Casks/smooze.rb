cask 'smooze' do
  version '1.5.0'
  sha256 '77acec6d17e681fe839e755fe74da262969ceb5992a06f1266fb265048543eb9'

  url 'https://smooze.co/updates/Smooze.dmg'
  appcast 'https://smooze.co/updates/update.xml',
          checkpoint: '35380f10d1424b661c259f5f72a9bb2914cfc1c65687a7c20c9be73a46f91373'
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
