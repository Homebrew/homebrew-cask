cask 'pyfa' do
  version '2.12.1'
  sha256 '1639953736df0f6de5bae779d22eaba906ccbb41eee951c5c25de9955d4a4a8b'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
