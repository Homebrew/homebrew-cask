cask 'protonvpn' do
  version '1.2.3'
  sha256 '24ea0d971aac03d5d0ceffcfa8426519fd838706997b74d672869b6bd4dc288c'

  url "https://protonvpn.com/download/ProtonVPN_mac_v#{version}.dmg"
  appcast 'https://protonvpn.com/download/macos-update.xml'
  name 'ProtonVPN'
  homepage 'https://protonvpn.com/'

  app 'ProtonVPN.app'

  uninstall launchctl: 'ch.protonvpn.ProtonVPNStarter',
            quit:      'ch.protonvpn.mac'

  zap trash: [
               '~/Library/Application Scripts/ch.protonvpn.ProtonVPNStarter',
               '~/Library/Containers/ch.protonvpn.ProtonVPNStarter',
               '~/Library/Application Scripts/ch.protonvpn.mac',
               '~/Library/Containers/ch.protonvpn.mac',
             ]
end
