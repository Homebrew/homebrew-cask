cask 'protonvpn' do
  version '1.0.0'
  sha256 '032d95003b2fb3c121a41dda736d4bc785ab6101eda65fb9e0b46c49487f6741'

  url "https://protonvpn.com/download/ProtonVPNv#{version.major_minor}.dmg"
  appcast 'https://protonvpn.com/download/macos-update.xml',
          checkpoint: 'ea73947ab6726ad2116d95fe2c968a41d0b459b8fdaf8dc4446cfb30840c4857'
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
