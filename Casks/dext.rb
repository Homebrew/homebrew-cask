cask 'dext' do
  version '0.9.0'
  sha256 '2bc13126bcde4df365228be2ccb04ec70ae3f77bef0971b22badcb7e3cb594e8'

  url "https://github.com/DextApp/dext/releases/download/v#{version}/Dext-darwin-x64.zip"
  appcast 'https://github.com/DextApp/dext/releases.atom',
          checkpoint: '2a6de7371ace8b9e0804482ccbe8ca0fbb00ef6fccb82b5d3f0d6e925b86618b'
  name 'Dext'
  homepage 'https://github.com/DextApp/dext'

  app 'Dext-darwin-x64/Dext.app'
end
