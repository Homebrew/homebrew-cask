cask 'protonvpn' do
  version '1.5.9'
  sha256 '14cf6425e7fc5062e5f6fa05049759bdfce8d154d41d56eba2ae9cddebd82493'

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
               '~/Library/Containers/ch.protonvpn.ProtonVPNStarter',
               '~/Library/Containers/ch.protonvpn.mac',
             ]
end
