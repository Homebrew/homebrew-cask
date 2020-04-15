cask 'pyfa' do
  version '2.20.0'
  sha256 '36a1aa25e7b5cbc385e21749fc13a3f1629d7b05a3a1c7c072e79ae92cae700a'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
