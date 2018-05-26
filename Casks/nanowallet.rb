cask 'nanowallet' do
  version '2.2.0'
  sha256 '3043f796e70eb877a9428b48e815455a7e6a8ad82b4b88423a437e302dce7b7d'

  # github.com/NemProject/NanoWallet was verified as official when first introduced to the cask
  url "https://github.com/NemProject/NanoWallet/releases/download/#{version}/NanoWallet-#{version}-osx64.zip"
  appcast 'https://github.com/NemProject/NanoWallet/releases.atom',
          checkpoint: '9c02975e470aac2a7e059ab94a19e4ed5e7027046f5ff7a850341a135a8f2ade'
  name 'NanoWallet'
  homepage 'https://nem.io/'

  app "NanoWallet-#{version}-osx64/NanoWallet.app"

  zap trash: '~/Library/Application Support/NanoWallet'
end
