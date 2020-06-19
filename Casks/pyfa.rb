cask 'pyfa' do
  version '2.22.1'
  sha256 '8b5e0445ff8092b3d204083773dce668c77115aa4dc1263e7a9cec528631deaf'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
