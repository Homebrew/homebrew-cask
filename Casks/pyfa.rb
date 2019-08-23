cask 'pyfa' do
  version '2.10.0'
  sha256 '9e1c0db4066482d428e1a0d6ec52ffd6cf1fd5cf45b9baec61164782bdf1e410'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
