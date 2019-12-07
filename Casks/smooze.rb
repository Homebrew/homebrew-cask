cask 'smooze' do
  version '1.8.7'
  sha256 'a4f611dafd56dc2de8acf38da34ee57bde28cea4d0e7df70590dcb4e72583d09'

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
