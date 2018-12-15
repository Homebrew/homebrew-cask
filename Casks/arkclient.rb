cask 'arkclient' do
  version '2.1.0'
  sha256 '58fe5c8c7683a83ea0857f294e00502fee81204eaf5471d8b040209c06de0291'

  # github.com/ArkEcosystem/ark-desktop was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/ark-desktop/releases/download/#{version}/Ark.Desktop.Wallet-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/ark-desktop/releases.atom'
  name 'Ark Client'
  homepage 'https://ark.io/'

  app 'ArkClient.app'
end
