cask 'pext' do
  version '0.23'
  sha256 'c18043a018910df22cd782a190049c9e20f5a06c013110c4e15975c33b70e050'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end
