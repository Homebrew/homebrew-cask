cask 'ethereum-wallet' do
  version '0.9.3'
  sha256 'c90fb7aad36b3a8357cac9472776b0e92363b2b8c684b8ea36d160a68cbe829f'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'cbf17a1c3ba682ca375b75d518dd6b27581a4f108eb45e47571f155bc5f678d0'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'

  zap trash: [
               '~/Library/Application Support/Ethereum Wallet',
               '~/Library/Preferences/com.ethereum.wallet.plist',
               '~/Library/Preferences/com.ethereum.wallet.helper.plist',
             ]
end
