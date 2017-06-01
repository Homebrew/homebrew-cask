cask 'electron-devdocs' do
  version '0.9.2'
  sha256 'edbb24f1c31ffa5a106bf40ede8c3647b57c97383da3b111e2e62de6a7997f2b'

  url "https://github.com/gengjiawen/electron-devdocs/releases/download/v#{version}/electron-devdocs-#{version}-mac.zip"
  name 'Electron Devdocs'
  homepage 'https://github.com/gengjiawen/electron-devdocs'

  app 'Devdocs.app'
end
