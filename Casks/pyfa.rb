cask 'pyfa' do
  version '2.10.1'
  sha256 'fa6567589e3170c5f5d9a579da2e05c0358066a912627f07e833df5bab69d798'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
