cask 'pyfa' do
  version '2.19.0'
  sha256 '7ea8afa615f8c8f1b8be4d50c9cced6f219d85fa1c357e3d1f6982ca6c46ea89'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version}/pyfa-v#{version}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
