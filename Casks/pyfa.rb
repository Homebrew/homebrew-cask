cask 'pyfa' do
  version '2.14.3'
  sha256 'c46a398747c7a03e9c70b9c33d8af39a0990c66dec281c86f1bf83aa78901d16'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
