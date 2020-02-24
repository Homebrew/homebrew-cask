cask 'protonvpn' do
  version '1.5.8'
  sha256 'ab58cb0018a1e877a624efdb1962ea4e8b555719edd77dd775de640960f78eee'

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
