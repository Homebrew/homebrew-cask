cask 'pyfa' do
  version '2.1.1,into.the.abyss-1.1'
  sha256 'debe9bc205dbecd53efb55d8084385d38923c698f8420b6287dc8e3fc1a5a2ca'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
