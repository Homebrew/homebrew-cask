cask 'smooze' do
  version '1.2.4'
  sha256 '649f9ae5a0e23903c85bf62cc2a3d494f60baa1f5e6e502c196bc653b06a5c69'

  url 'https://smooze.co/updates/Smooze.dmg'
  appcast 'https://smooze.co/updates/update.xml',
          checkpoint: 'ad1e8fe7b7d567c8f212cbf458156eec0670f0ba9619fa3f1c8c0e0f05102455'
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
