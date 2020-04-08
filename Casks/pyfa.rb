cask 'pyfa' do
  version '2.18.1'
  sha256 'b271c0b5b3ac57799159888fb6e6a414e1995c221af5ab979906ec5cb7e5b02c'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
