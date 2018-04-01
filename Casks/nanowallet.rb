cask 'nanowallet' do
  version '2.0.14'
  sha256 '0bb10695394b5bd770b389a3466d9bf36c50350bb7f5a530cb8f06985fa3df21'

  # github.com/NemProject/NanoWallet was verified as official when first introduced to the cask
  url "https://github.com/NemProject/NanoWallet/releases/download/#{version}/NanoWallet-#{version}-osx64.zip"
  appcast 'https://github.com/NemProject/NanoWallet/releases.atom',
          checkpoint: 'dea2ec8bb15f6a4a8b6356f6dd247a52f30d00900704d633aacd504a8f341430'
  name 'NanoWallet'
  homepage 'https://nem.io/'

  app "NanoWallet-#{version}-osx64/NanoWallet.app"

  zap trash: '~/Library/Application Support/NanoWallet'
end
