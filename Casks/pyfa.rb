cask 'pyfa' do
  version '2.17.2'
  sha256 '9b8e453fe15e975890517a658c41f30b3ce30ac11ad560bc6de2877d16e9d796'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
