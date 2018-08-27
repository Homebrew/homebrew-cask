cask 'nocturn' do
  version '1.6.6'
  sha256 '8635a2e59ea41b192aac0e3c47b54fd7a9e10b17fb4449d5f30df37d4ae4e923'

  url "https://github.com/k0kubun/Nocturn/releases/download/v#{version}/Nocturn-darwin-x64.zip"
  appcast 'https://github.com/k0kubun/Nocturn/releases.atom'
  name 'Nocturn'
  homepage 'https://github.com/k0kubun/Nocturn'

  app 'Nocturn-darwin-x64/Nocturn.app'
end
