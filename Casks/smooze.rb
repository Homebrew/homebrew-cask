cask 'smooze' do
  version '1.3.9'
  sha256 '96b2a7d3819e21ba65ff39b46c666a4d4da69d48153ca06d462a3981f485b8b4'

  url 'https://smooze.co/updates/Smooze.dmg'
  appcast 'https://smooze.co/updates/update.xml',
          checkpoint: '54eef9825098b47969e99d0168c006335f68b6f0262073939f677845bc644dca'
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
