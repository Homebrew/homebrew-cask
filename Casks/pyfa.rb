cask 'pyfa' do
  version '2.14.0'
  sha256 '94c3d4015eb0da4d2cc73435259e5be78929cc0880b68cc009a0befd2a986a26'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
