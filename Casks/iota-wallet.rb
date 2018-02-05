cask 'iota-wallet' do
  version '2.5.7'
  sha256 'dfb4219c68e97a0056df6a59c5ba98684086c4f5347357c14143842eb33ecea9'

  # github.com/iotaledger/wallet was verified as official when first introduced to the cask
  url "https://github.com/iotaledger/wallet/releases/download/v#{version}/IOTA.Wallet-#{version}.dmg"
  appcast 'https://github.com/iotaledger/wallet/releases.atom',
          checkpoint: 'e46f4b65aad99388b0e9607f4a2e42d3f5f074ffe5a0ec7a06dfb14f08df1d40'
  name 'IOTA Wallet'
  homepage 'https://iota.org/'

  app 'IOTA Wallet.app'

  zap trash: '~/Library/Application Support/IOTA Wallet'
end
