cask 'cityofzion-neon' do
  version '0.1.2'
  sha256 'd21f571a42c6f25df422507108a5d3433ecb0b1d7e5da9f65e1e4cf7ab5a090d'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: 'f96d396012c6f25e2c2d1fed3e78b09ad9404afc34b998a8dd33980f576cb162'
  name 'Neon Wallet'
  homepage 'https://github.com/CityOfZion/neon-wallet'

  app 'Neon.app'

  zap trash: [
               '~/Library/Application Support/Neon',
               '~/Library/Preferences/com.electron.neon.helper.plist',
               '~/Library/Preferences/com.electron.neon.plist',
               '~/Library/Saved Application State/com.electron.neon.savedState',
             ]
end
