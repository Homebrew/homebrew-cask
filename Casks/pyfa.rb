cask 'pyfa' do
  version '2.15.0'
  sha256 '8d7d0099601fed1d993e5be870e339082d14cc422f0af0dd72966fb21b84915f'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
