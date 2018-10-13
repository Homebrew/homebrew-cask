cask 'pext' do
  version '0.20'
  sha256 '6fb77c4be7579438c6df317a0bed4f250c1b2e947ec225e4c5cd6fbeffddfc01'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end
