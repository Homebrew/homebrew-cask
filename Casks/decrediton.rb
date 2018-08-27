cask 'decrediton' do
  version '1.2.1'
  sha256 'eedeb515b02c4711e05ac685849a538a6e32911bdffe358313113068600efe44'

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast 'https://github.com/decred/decred-binaries/releases.atom'
  name 'Decrediton'
  homepage 'https://github.com/decred/decrediton'

  app 'decrediton.app'
end
