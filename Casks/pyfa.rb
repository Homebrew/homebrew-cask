cask 'pyfa' do
  version '2.20.2'
  sha256 '2d5931311421751833d129c7552fb0b9667c7f1504f9407180b553e647177951'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
