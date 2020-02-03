cask 'decrediton' do
  version '1.5.1'
  sha256 '62c02815bb8af8f4d6638bb832d084012bf93f3375090b4fd74cf128ca75a772'

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast 'https://github.com/decred/decred-binaries/releases.atom'
  name 'Decrediton'
  homepage 'https://github.com/decred/decrediton'

  app 'decrediton.app'
end
