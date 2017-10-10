cask 'iota-wallet' do
  version '2.5.1'
  sha256 '89c5ad91c3a0bb5c8769be5cf8b0b7f4b6faed5af9b7feb32f687d6fde941ac7'

  # github.com/iotaledger/wallet was verified as official when first introduced to the cask
  url "https://github.com/iotaledger/wallet/releases/download/v#{version}/IOTA.Wallet-#{version}.dmg"
  appcast 'https://github.com/iotaledger/wallet/releases.atom',
          checkpoint: '2c7e5c5101b457aadbe8e42b56288088e78d3ec61490cda4ae961bcf39cef950'
  name 'IOTA Wallet'
  homepage 'https://iota.org/'

  app 'IOTA Wallet.app'

  zap trash: '~/Library/Application Support/IOTA Wallet'
end
