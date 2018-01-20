cask 'iota-wallet' do
  version '2.5.6'
  sha256 '78aadca2d4f9127e7f7a1ff2611e75cd7dfa127dc65d852fc453651344b4a4af'

  # github.com/iotaledger/wallet was verified as official when first introduced to the cask
  url "https://github.com/iotaledger/wallet/releases/download/v#{version}/IOTA.Wallet-#{version}.dmg"
  appcast 'https://github.com/iotaledger/wallet/releases.atom',
          checkpoint: '3c2fd80c80721898f551cb0950b8f33d83ed9e12b5626bd79892e9fbc1733c76'
  name 'IOTA Wallet'
  homepage 'https://iota.org/'

  app 'IOTA Wallet.app'

  zap trash: '~/Library/Application Support/IOTA Wallet'
end
