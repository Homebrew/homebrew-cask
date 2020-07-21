cask 'protonvpn' do
  version '1.7.0'
  sha256 '3aa4ee40b9710317eed46b8fcc9916c314e783e30fa42bd2e3f9c6d9a947125f'

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
