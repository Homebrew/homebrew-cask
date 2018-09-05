cask 'nanowallet' do
  version '2.3.2'
  sha256 '145618e2e6fc9b5a98a0579391eccc3cf79cbb9a29c97d9c64e398c5a9d2e402'

  # github.com/NemProject/NanoWallet was verified as official when first introduced to the cask
  url "https://github.com/NemProject/NanoWallet/releases/download/#{version}/NanoWallet-#{version}-osx64.zip"
  appcast 'https://github.com/NemProject/NanoWallet/releases.atom'
  name 'NanoWallet'
  homepage 'https://nem.io/'

  app "NanoWallet-#{version}-osx64/NanoWallet.app"

  zap trash: '~/Library/Application Support/NanoWallet'
end
