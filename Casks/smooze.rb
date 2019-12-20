cask 'smooze' do
  version '1.8.9'
  sha256 'f5df9fa23491b54a6444885e1aa7331e5e2aa02369975b4bb452a00086ae8323'

  url 'https://smooze.co/updates/Smooze.dmg'
  appcast 'https://smooze.co/updates/update.xml'
  name 'Smooze'
  homepage 'https://smooze.co/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Smooze.app'

  uninstall quit: 'co.smooze.macos'

  zap trash: [
               '~/Library/Application Support/co.smooze.macos',
               '~/Library/Application Support/Smooze',
               '~/Library/Caches/co.smooze.macos',
               '~/Library/Caches/io.fabric.sdk.mac.data/co.smooze.macos',
               '~/Library/Preferences/co.smooze.macos.plist',
             ]
end
