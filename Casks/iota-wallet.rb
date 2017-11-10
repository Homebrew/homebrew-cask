cask 'iota-wallet' do
  version '2.5.3'
  sha256 '5a017f703baf1c0649c805aa9346d546305c4655716a1047fd57304d7815c340'

  # github.com/iotaledger/wallet was verified as official when first introduced to the cask
  url "https://github.com/iotaledger/wallet/releases/download/v#{version}/IOTA.Wallet-#{version}.dmg"
  appcast 'https://github.com/iotaledger/wallet/releases.atom',
          checkpoint: '1e7de9b14e3b53ca8786a450847b0b457508482c654bd46987e31946082abe3c'
  name 'IOTA Wallet'
  homepage 'https://iota.org/'

  app 'IOTA Wallet.app'

  zap trash: '~/Library/Application Support/IOTA Wallet'
end
