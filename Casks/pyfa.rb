cask 'pyfa' do
  version '2.13.0'
  sha256 'e83cc47b27e5fa0f26b21a50d0dd6161a03ae61dcd49514dfa82cccfea4038d1'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
