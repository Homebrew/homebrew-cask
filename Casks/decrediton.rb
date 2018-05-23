cask 'decrediton' do
  version '1.2.1'
  sha256 'eedeb515b02c4711e05ac685849a538a6e32911bdffe358313113068600efe44'

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast 'https://github.com/decred/decred-binaries/releases.atom',
          checkpoint: 'e0d0cb7ce945f71012c9394883985db3a42b368781ee7c7fb341548aec7316a9'
  name 'Decrediton'
  homepage 'https://github.com/decred/decrediton'

  app 'decrediton.app'
end
