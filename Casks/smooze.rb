cask 'smooze' do
  version '1.5.8'
  sha256 '5cdb9f16beb86333ae287343e82a7d5ece945514e5dd903674acf22e43e433df'

  url 'https://smooze.co/updates/Smooze.dmg'
  appcast 'https://smooze.co/updates/update.xml',
          checkpoint: 'e42762310b3e0b0b42d01801812a35ea89a3a46c814cac87538e90e60ff84be0'
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
