cask 'iota-wallet' do
  version '2.5.4'
  sha256 '07e21c8975b540f5e90cd9b370608947023cf23cd92e3f5b5a522912320bd24e'

  # github.com/iotaledger/wallet was verified as official when first introduced to the cask
  url "https://github.com/iotaledger/wallet/releases/download/v#{version}/IOTA.Wallet-#{version}.dmg"
  appcast 'https://github.com/iotaledger/wallet/releases.atom',
          checkpoint: 'cd9f74ddba5669150bb7349c492f0ec9107b08ccb6938c04e10b9f5b51ec4f56'
  name 'IOTA Wallet'
  homepage 'https://iota.org/'

  app 'IOTA Wallet.app'

  zap trash: '~/Library/Application Support/IOTA Wallet'
end
