cask 'smooze' do
  version '1.6.7'
  sha256 'bd8d54a91bfb3749dd9d1a1a229c23c51a06a616777ed41abb55bc390f809a98'

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
