cask 'pyfa' do
  version '2.3.1,yc120.7-1.2'
  sha256 '124ce62c818a81bc9b6c0cccdb03b7a387a3c3024a231f01fa389fc63f0a8aad'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
