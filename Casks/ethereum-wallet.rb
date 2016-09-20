cask 'ethereum-wallet' do
  version '0.8.3'
  sha256 'e915e66a774cd9af320b746bfd907cc9f678d0d39e75643f35488925e177fefa'

  url "https://github.com/ethereum/mist/releases/download/#{version}/Ethereum.Wallet-#{version}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: 'ec95a7f9bf2bf3d94ff21dbb1b0bc6d9008b2fbacf80c46512768250a43dac93'
  name 'Ethereum Wallet'
  homepage 'https://github.com/ethereum/mist'
  license :gpl

  app 'Ethereum-Wallet.app'
end
