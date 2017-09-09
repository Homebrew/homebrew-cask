cask 'iota-wallet' do
  version '2.4.0'
  sha256 '6e129bc2800e67a5a4434c2ff27cd1cb936caaf6cbff67c905b6c78d329ea46b'

  # github.com/iotaledger/wallet was verified as official when first introduced to the cask
  url "https://github.com/iotaledger/wallet/releases/download/v#{version}/IOTA.Wallet-#{version}.dmg"
  name 'IOTA Wallet'
  homepage 'https://iota.org/'

  app 'IOTA Wallet.app'

  zap trash: '~/Library/Application Support/IOTA Wallet'
end
