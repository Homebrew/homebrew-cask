cask 'pext' do
  version '0.21'
  sha256 'e29ca928f407a3c9d03e84a49c81f036176cf535d51f9ff3538f89f679d4dc9b'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end
