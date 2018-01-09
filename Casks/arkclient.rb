cask 'arkclient' do
  version '1.5.0'
  sha256 '915922096191bf6203ef797492e732c477499e99bb670fc7321755e2addfbd2c'

  # github.com/ArkEcosystem/ark-desktop was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/ark-desktop/releases/download/#{version}/ArkClient-MacOS-#{version}.dmg"
  name 'Ark Client'
  homepage 'https://ark.io/'

  app 'ArkClient.app'
end
