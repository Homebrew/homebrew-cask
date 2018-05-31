cask 'protonvpn' do
  version '1.0.0'
  sha256 '040da07ec2440a965cb2d1ce351c9041c3a407c16784c1ea1a63e0f47a57b050'

  url "https://protonvpn.com/download/ProtonVPN_mac_v#{version}.dmg"
  appcast 'https://protonvpn.com/download/macos-update.xml',
          checkpoint: '37eedcd7ae33c52c18919e298fe6dc0c10b1ac6582129b0838b5e71284804e69'
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
