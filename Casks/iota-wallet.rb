cask 'iota-wallet' do
  version '2.5.5'
  sha256 'da45578f534d3c31e49e1ff987260ccc8cda6b17f51669ba873fb322b28a3442'

  # github.com/iotaledger/wallet was verified as official when first introduced to the cask
  url "https://github.com/iotaledger/wallet/releases/download/v#{version}/IOTA.Wallet-#{version}.dmg"
  appcast 'https://github.com/iotaledger/wallet/releases.atom',
          checkpoint: '23aa9f98efe5f7d0e8f40772f159c101c4f74df6d15a003df195a4dbf07a2546'
  name 'IOTA Wallet'
  homepage 'https://iota.org/'

  app 'IOTA Wallet.app'

  zap trash: '~/Library/Application Support/IOTA Wallet'
end
