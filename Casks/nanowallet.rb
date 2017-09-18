cask 'nanowallet' do
  version '1.4.13'
  sha256 '5ad6572a60e3f9ee473767d784387fd3cb2881ed7ae29650702e7cce7b00a1f4'

  # github.com/NemProject/NanoWallet was verified as official when first introduced to the cask
  url "https://github.com/NemProject/NanoWallet/releases/download/#{version}/NanoWallet-#{version}-osx64.zip"
  appcast 'https://github.com/NemProject/NanoWallet/releases.atom',
          checkpoint: 'b15d048974e75d03fd792437d8556fb30ac2b7c9ac127e8281bad8c269b711e6'
  name 'NanoWallet'
  homepage 'https://nem.io/'

  app "NanoWallet-#{version}-osx64/NanoWallet.app"

  zap trash: '~/Library/Application Support/NanoWallet'
end
