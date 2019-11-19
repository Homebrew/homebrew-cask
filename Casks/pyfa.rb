cask 'pyfa' do
  version '2.14.2'
  sha256 'd0ec729abd9fd93b8cd11f8227441a355ad943cefdc6bd6419ebe41e663c83ee'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
