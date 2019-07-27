cask 'pyfa' do
  version '2.9.5'
  sha256 'ca7d4096d22ee4b74ec6f675d2a764480675120e12811ed10d6160fabb455339'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
