cask 'decrediton' do
  version '1.3.0'
  sha256 '77753257c7ebaf1b3f77f0d6445d227dff20edd770702ee290140e42250b12aa'

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast 'https://github.com/decred/decred-binaries/releases.atom'
  name 'Decrediton'
  homepage 'https://github.com/decred/decrediton'

  app 'decrediton.app'
end
