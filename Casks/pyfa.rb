cask 'pyfa' do
  version '2.17.0'
  sha256 'b96efff3ff648d1bca17dc6e8600b5225402a9733af0ebe89f02d576ee60a2a9'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
