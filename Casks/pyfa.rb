cask 'pyfa' do
  version '2.9.2'
  sha256 '32929328a63e546c6765cf1e6938f087fae93ec249ece840c831346112b4b94a'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
