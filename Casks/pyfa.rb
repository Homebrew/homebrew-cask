cask 'pyfa' do
  version '2.8.0'
  sha256 'ea18d91f372e0aa73b470b3419ff8dfb00497de0f3756be4025e147689b09884'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
