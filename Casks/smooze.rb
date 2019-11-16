cask 'smooze' do
  version '1.8.4'
  sha256 '16a9caea781580dc5a772fd0e1a8c1b433ebe50ac73a9f9f720324e395a3fd28'

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
