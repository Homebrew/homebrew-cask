cask 'pyfa' do
  version '2.14.1'
  sha256 'f8e571d00e91ed8df20b486fefa3614bd6c5f51d0de2cce872f6ec40d17ded6f'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
