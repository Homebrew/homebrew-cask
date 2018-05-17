cask 'cityofzion-neon' do
  version '0.2.5'
  sha256 '72d2bdb86b95be51b7d9772cadf2aa37033f1e89a9ceb79f803ef70b579a984f'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: '79e596992d57b3fcb979eb5cc4cc46f7bf7138641ed5e0dfee1c7436ee64cd0e'
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
