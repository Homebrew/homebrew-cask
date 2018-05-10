cask 'cityofzion-neon' do
  version '0.2.4'
  sha256 '7b39fab2f6182dfe8b399b228f7d84b0e231629bd893eb45a029056539d7904b'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: 'a31dcb81982612298e16fe223e3f71711bff4c493b001241aec3bc9d1be73073'
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
