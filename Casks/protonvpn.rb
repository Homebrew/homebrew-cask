cask 'protonvpn' do
  version '1.5.3'
  sha256 '749476c06decd55da840b20a5c3067666b7c570611c69f18d7a5941f6b057a62'

  url "https://protonvpn.com/download/ProtonVPN_mac_v#{version}.dmg"
  appcast 'https://protonvpn.com/download/macos-update.xml'
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
