cask 'pyfa' do
  version '2.12.0'
  sha256 '3b646e74828a454e09ce09b1b7022a9748a2b72c434c7212d917581ad5c267df'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
