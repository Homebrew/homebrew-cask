cask 'pyfa' do
  version '2.11.0'
  sha256 'f5aaacd9006be53ef803e7dcfc9e01bcc11487c16e6c4f7cf787781417fbb125'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
