cask 'protonvpn' do
  version '0.2.3'
  sha256 'c7989385b8b586d8b9a7794c2d4c387441473dd523d5458bc0807fb642f262a2'

  url 'https://protonvpn.com/download/ProtonVPN.dmg'
  appcast 'https://protonvpn.com/download/macos-update.xml',
          checkpoint: 'f67fba6ca337d8e3eb64956777d9cad84eb0bfc759db724b60d99aa3b0147e3f'
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
