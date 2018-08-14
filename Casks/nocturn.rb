cask 'nocturn' do
  version '1.6.3'
  sha256 'bfe4d9d3fcf8efe2a6814cacb47f14a177e30d58e02b21244387196eadc7c61f'

  url "https://github.com/k0kubun/Nocturn/releases/download/v#{version}/Nocturn-darwin-x64.zip"
  appcast 'https://github.com/k0kubun/Nocturn/releases.atom'
  name 'Nocturn'
  homepage 'https://github.com/k0kubun/Nocturn'

  app 'Nocturn-darwin-x64/Nocturn.app'
end
