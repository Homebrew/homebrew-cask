cask 'pyfa' do
  version '2.16.3'
  sha256 '92f446f49ac70befe3514792df3fa7971402c8a095e7fb7e92728607af33cce7'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
