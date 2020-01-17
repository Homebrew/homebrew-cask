cask 'pyfa' do
  version '2.16.0'
  sha256 'cdc4db78387209855783a3ebd958e8b84a6cfcbe7c46e755570e90869f4f7298'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
