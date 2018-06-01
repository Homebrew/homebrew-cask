cask 'smooze' do
  version '1.6.4'
  sha256 '7e4669f21f102c3e6575a6925d062c1ed76cd6b143ac66eaf47521a2a082e40c'

  url 'https://smooze.co/updates/Smooze.dmg'
  appcast 'https://smooze.co/updates/update.xml',
          checkpoint: 'e3b03973279535b4a4db5514143a71886d7d87087f7b0f409ae0e52ef8941e40'
  name 'Smooze'
  homepage 'https://smooze.co/'

  auto_updates true

  app 'Smooze.app'

  uninstall login_item: 'Smooze',
            quit:       'co.smooze.macos'

  zap trash: [
               '~/Library/Application Support/co.smooze.macos',
               '~/Library/Application Support/Smooze',
               '~/Library/Caches/co.smooze.macos',
               '~/Library/Caches/io.fabric.sdk.mac.data/co.smooze.macos',
               '~/Library/Preferences/co.smooze.macos.plist',
             ]
end
