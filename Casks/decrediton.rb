cask 'decrediton' do
  version '1.3.1'
  sha256 '3aad8659b9713a9e787450ed3bdfe8f5f73cb31bb57bc35eb97bb72877d3ef8a'

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast 'https://github.com/decred/decred-binaries/releases.atom'
  name 'Decrediton'
  homepage 'https://github.com/decred/decrediton'

  app 'decrediton.app'
end
