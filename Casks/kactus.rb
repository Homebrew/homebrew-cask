cask 'kactus' do
  version '0.2.6'
  sha256 'e689e10903196cab231b372a0f5b811fe7881bef30d8eaa7a973c0bccc0937b1'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom',
          checkpoint: 'bcfb454afb3d4069a76e153e0e7068502c18844ab8166133ae1e74eb05b179c9'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end
