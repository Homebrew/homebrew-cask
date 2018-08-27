cask 'arkclient' do
  version '1.6.1'
  sha256 'b4a6ac066981c05cf6ebec389bea8b2d0610ea4e283870b6b469a67f95b76e37'

  # github.com/ArkEcosystem/ark-desktop was verified as official when first introduced to the cask
  url "https://github.com/ArkEcosystem/ark-desktop/releases/download/#{version}/ArkClient-MacOS-#{version}.dmg"
  appcast 'https://github.com/ArkEcosystem/ark-desktop/releases.atom'
  name 'Ark Client'
  homepage 'https://ark.io/'

  app 'ArkClient.app'
end
