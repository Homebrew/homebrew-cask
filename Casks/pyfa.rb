cask 'pyfa' do
  version '2.9.1'
  sha256 '494fc2e23c8a1a361659216a33703f626342e4875ffca25dc8d258686e72d14b'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
