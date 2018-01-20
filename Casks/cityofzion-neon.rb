cask 'cityofzion-neon' do
  version '0.1.1'
  sha256 '814200bfe0523a387f89a71b27716b4f023359ff61053d824d46ba234919e036'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: '3fabfe5bd66c8b4a81930f6a37fd2f5cc436f1482786e93371ad8981e175ed9b'
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
