cask 'nanowallet' do
  version '2.1.2'
  sha256 '3457aeb6c9d3db09383d688ecebc2dead4b09580ead17cda6b9a6da86de05107'

  # github.com/NemProject/NanoWallet was verified as official when first introduced to the cask
  url "https://github.com/NemProject/NanoWallet/releases/download/#{version}/NanoWallet-#{version}-osx64.zip"
  appcast 'https://github.com/NemProject/NanoWallet/releases.atom',
          checkpoint: '221c0bc423fe71211c27da1cb3c441d7849a9fdd6bc9ed03dc4a70d65ac40b4d'
  name 'NanoWallet'
  homepage 'https://nem.io/'

  app "NanoWallet-#{version}-osx64/NanoWallet.app"

  zap trash: '~/Library/Application Support/NanoWallet'
end
