cask 'cityofzion-neon' do
  version '2.2.1'
  sha256 '4dfee1ff941b8636fea0362dac3c87e8e6e08a06d6208ce96d2efec9d5de412f'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom'
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
