cask 'pyfa' do
  version '2.11.1'
  sha256 '5a1bb00c47069a3499d85021f6f422e4d32894e59b0844a74ae2f2ea4073dc4e'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
