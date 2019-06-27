cask 'ark-desktop-wallet' do
  version '2.5.0'
  sha256 '6e1069a2695a13616373b929a16e3685a13893e1d1217feacc5558943f5fea08'

  # github.com/ArkEcosystem/desktop-wallet was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/desktop-wallet/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/desktop-wallet/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
