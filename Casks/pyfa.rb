cask 'pyfa' do
  version '2.20.1'
  sha256 '1d503ec0c0f735c522a3e41a1a8c74c4e57548bbff0440678c399a3f696c495f'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
