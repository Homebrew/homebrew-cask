cask 'protonvpn' do
  version '1.6.0'
  sha256 'cb7bf9be13cb160b2f0fee3531885198c17c8450051a47acf3eef00321551162'

  url "https://protonvpn.com/download/ProtonVPN_mac_v#{version}.dmg"
  appcast 'https://protonvpn.com/download/macos-update2.xml'
  name 'ProtonVPN'
  homepage 'https://protonvpn.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'ProtonVPN.app'

  uninstall launchctl: 'ch.protonvpn.ProtonVPNStarter',
            quit:      'ch.protonvpn.mac'

  zap trash: [
               '~/Library/Application Scripts/ch.protonvpn.ProtonVPNStarter',
               '~/Library/Application Scripts/ch.protonvpn.mac',
               '~/Library/Application Support/CrashReporter/ProtonVPN*',
               '~/Library/Application Support/ProtonVPN',
               '~/Library/Caches/SentryCrash/ProtonVPN',
               '~/Library/Caches/ch.protonvpn.mac',
               '~/Library/Caches/com.apple.nsurlsessiond/Downloads/ch.protonvpn.mac',
               '~/Library/Containers/ch.protonvpn.*',
               '~/Library/Cookies/ch.protonvpn.mac.binarycookies',
               '~/Library/Logs/ProtonVPN.log',
               '~/Library/Preferences/ch.protonvpn.mac.plist',
               '~/Library/WebKit/ch.protonvpn.mac',
             ]
end
