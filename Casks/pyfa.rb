cask 'pyfa' do
  version '2.20.3'
  sha256 'c00ec3a206350dc2c11c8995ce5d06cd7a9bf4587ee9d53c30913891c72b6fe5'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
