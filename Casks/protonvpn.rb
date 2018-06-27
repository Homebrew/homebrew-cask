cask 'protonvpn' do
  version '1.1.0'
  sha256 'cd1a68c965e82bd042d8b058e2cbcc760f2fab9295902acd18168e1253aa742e'

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
