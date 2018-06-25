cask 'arkclient' do
  version '1.5.1'
  sha256 'a33256df845f440763b3738168ba10951c16683fec37330a94ebb2637b612273'

  # github.com/ArkEcosystem/ark-desktop was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/ark-desktop/releases/download/#{version}/ArkClient-MacOS-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/ark-desktop/releases.atom'
  name 'Ark Client'
  homepage 'https://ark.io/'

  app 'ArkClient.app'
end
