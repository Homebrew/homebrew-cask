cask 'ivideonclient' do
  version '6.8.1'
  sha256 '970959428ed0d55c61db81617e36c65fce5b3ad0c80dd10dd16d2ed358458bef'

  # updates.iv-cdn.com was verified as official when first introduced to the cask
  url "https://updates.iv-cdn.com/bundles/ivideon_client/#{version}/IvideonClient_#{version}_macosx-x86-64.dmg"
  appcast 'https://www.ivideon.com/downloads/'
  name 'Ivideon Client'
  homepage 'https://www.ivideon.com/'

  app 'IvideonClient.app'
end
