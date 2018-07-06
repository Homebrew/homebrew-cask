cask 'ethereum-wallet' do
  version '0.11.0'
  sha256 'e3715fa1becb2ef3caae9b1e9f84f7d971b667c2421fb30607a57be7fb7d95cd'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Ethereum-Wallet-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'

  app 'Ethereum Wallet.app'

  zap trash: [
               '~/Library/Application Support/Ethereum Wallet',
               '~/Library/Preferences/com.ethereum.wallet.plist',
               '~/Library/Preferences/com.ethereum.wallet.helper.plist',
             ]
end
