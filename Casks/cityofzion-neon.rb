cask 'cityofzion-neon' do
  version '0.1.3'
  sha256 'd1690929082585404ecf334de9068c6af8b6b7dcf4775a70935640a71a7a6e68'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: '66df405c80ea4ce6d7113591bcbb379084789baaa141ca517f60f27388bc2ef3'
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
