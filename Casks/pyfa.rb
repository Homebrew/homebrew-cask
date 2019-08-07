cask 'pyfa' do
  version '2.9.6'
  sha256 'ded8f1963b2980da1b44f5a297fb540f0ddaf38e72cd28cbe31060e9eb0a7abb'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
