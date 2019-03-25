cask 'ark-desktop-wallet' do
  version '2.3.1'
  sha256 'a73e5f3d795cdffb77d5cfee3ae29aaafde79be4ed014c45d1da96efb312257a'

  # github.com/ArkEcosystem/ark-desktop was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/ark-desktop/releases/download/#{version}/ark-desktop-wallet-mac-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/ark-desktop/releases.atom'
  name 'Ark Desktop Wallet'
  homepage 'https://ark.io/'

  app 'Ark Desktop Wallet.app'
end
