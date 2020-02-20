cask 'cityofzion-neon' do
  version '2.4.0'
  sha256 'cf469cb239902fcf07c94a15ea575bca48279fbd46084730b64c98384f43caac'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.dmg"
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
