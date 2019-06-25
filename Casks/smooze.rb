cask 'smooze' do
  version '1.7.4'
  sha256 '1e353e9a574a099521e0d5493079465275824e10e94327c8c2c182cc16faf05d'

  url 'https://smooze.co/updates/Smooze.dmg'
  appcast 'https://smooze.co/updates/update.xml'
  name 'Smooze'
  homepage 'https://smooze.co/'

  auto_updates true
  depends_on macos: '>= :sierra'

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
