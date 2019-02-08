cask 'decrediton' do
  version '1.4.0'
  sha256 '990cb6b61999be5d1100581cc84bb95f4e9e5be8a5330c5e6c8940c34fe78b19'

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-v#{version}.dmg"
  appcast 'https://github.com/decred/decred-binaries/releases.atom'
  name 'Decrediton'
  homepage 'https://github.com/decred/decrediton'

  app 'decrediton.app'
end
