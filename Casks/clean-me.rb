cask 'clean-me' do
  version '1.1.1'
  sha256 '3848677b4d43bbcae781127011fddeba54ef6781473e6b0605038bd1a05f2fc7'

  url "https://github.com/Kevin-De-Koninck/Clean-Me/releases/download/v#{version}/Clean.Me.app.zip"
  appcast 'https://github.com/Kevin-De-Koninck/Clean-Me/releases.atom',
          checkpoint: 'bedef3ef059b767dabdc6112d4f76421d39a43781eac2eb1d07970fcf5c7e5c9'
  name 'Clean-me'
  homepage 'https://github.com/Kevin-De-Koninck/Clean-Me'

  app 'Clean Me.app'
end
