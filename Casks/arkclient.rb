cask 'arkclient' do
  version '1.6.0'
  sha256 '588b92d889d0b23b28ece6b165ed49d592985e62d33a133390090eb75561997b'

  # github.com/ArkEcosystem/ark-desktop was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/ark-desktop/releases/download/#{version}/ArkClient-MacOS-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/ark-desktop/releases.atom'
  name 'Ark Client'
  homepage 'https://ark.io/'

  app 'ArkClient.app'
end
