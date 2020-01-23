cask 'pyfa' do
  version '2.16.2'
  sha256 '8c9bc379db1c3833acd1183cbfd1c380bcc9035682febc757dac55ff59b3d4c5'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
