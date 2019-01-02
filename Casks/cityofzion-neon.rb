cask 'cityofzion-neon' do
  version '2.0.0'
  sha256 'e4d3f7143bc7ee1e503fdfc64b4b46a1fe383891a0ad51dbad9a6e614c6e2590'

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
