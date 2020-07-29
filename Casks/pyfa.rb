cask 'pyfa' do
  version '2.22.0'
  sha256 '1e8e9845c2d41f6cc47594b176de53e69106c2fe733ec3c9fafc47c3055f5d0d'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
