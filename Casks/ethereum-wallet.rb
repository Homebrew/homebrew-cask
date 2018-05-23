cask 'ethereum-wallet' do
  version '0.10.0'
  sha256 '0e2f2ae23a4e5f36f82ae2de14a885724ac67bcb9157ce9b1636e30d3f101394'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '9aa35764ea69c338439e7b7eec3737f4d03eae7551fa1493f2e36a49413ea581'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'

  zap trash: [
               '~/Library/Application Support/Ethereum Wallet',
               '~/Library/Preferences/com.ethereum.wallet.plist',
               '~/Library/Preferences/com.ethereum.wallet.helper.plist',
             ]
end
