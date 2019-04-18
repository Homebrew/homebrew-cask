cask 'pyfa' do
  version '2.9.0'
  sha256 'aacbc789a528585409fda7f1bad75a5c237ef4ee85bbfe7a5e2aef75e363ba46'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
