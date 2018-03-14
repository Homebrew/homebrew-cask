cask 'cityofzion-neon' do
  version '0.2.2'
  sha256 '117cfb457b100ff348e1f30b24b8740c6ae9c39535c4241043f6416900c08595'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: '354a1cb9e474650619d67f3a91e45afe719e6880315d78c346bbbae429f6f9b8'
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
