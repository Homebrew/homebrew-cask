cask 'pyfa' do
  version '2.21.0'
  sha256 '93198e608b8fe6b3cd24438b59280943b40ec640da78b95724a315645e5d129c'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
