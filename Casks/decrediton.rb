cask 'decrediton' do
  version '1.1.1'
  sha256 '1345e9764ee33be1aea3ed16fcdcd8ab02871341c451574f5b42c56b4e796df3'

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-#{version}.dmg"
  appcast 'https://github.com/decred/decred-binaries/releases.atom',
          checkpoint: '40be85f45c399e503576299dbd46f5345d9737b01ca16b64501be4e80abfd2e4'
  name 'Decrediton'
  homepage 'https://github.com/decred/decrediton'

  app 'decrediton.app'
end
