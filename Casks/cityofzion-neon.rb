cask 'cityofzion-neon' do
  version '0.2.1'
  sha256 'c1e75ed0c81d78173ea403fbb35843b2ecc61dde366409d908479dd4016fc093'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: 'afb12029c1eb93d130105f5cd314325a17996e6becefdc81dff108fc34f26aaa'
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
