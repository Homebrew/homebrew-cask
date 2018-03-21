cask 'arkclient' do
  version '1.5.1'
  sha256 'a33256df845f440763b3738168ba10951c16683fec37330a94ebb2637b612273'

  # github.com/ArkEcosystem/ark-desktop was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/ark-desktop/releases/download/#{version}/ArkClient-MacOS-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/ark-desktop/releases.atom',
          checkpoint: '001eb2cad60cdb8a76b729ac25fc7da871404b1ba0ca43e5e2686f50c71f402d'
  name 'Ark Client'
  homepage 'https://ark.io/'

  app 'ArkClient.app'
end
