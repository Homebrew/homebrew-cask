cask 'pyfa' do
  version '2.15.1'
  sha256 '4ceeeda4f263e83ef05d02a9d8cbbd3a8c0dbdcaea649ea71274efde6e5727c0'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
