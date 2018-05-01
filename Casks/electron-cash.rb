cask 'electron-cash' do
  version '3.2'
  sha256 '7da9595a7d56ec9e59e15f809ebb522f1b72e47ab26fbc6435324c1b17d4dbd3'

  url "https://electroncash.org/downloads/#{version}/mac/Electron-Cash-#{version}-macosx.dmg"
  appcast 'https://github.com/fyookball/electrum/releases.atom',
          checkpoint: '6ca43199a0f167252a87577e86f3346863b5a2078ff6a77d662983542841854d'
  name 'Electron Cash'
  homepage 'https://www.electroncash.org/'

  app 'Electron-Cash.app'

  zap trash: '~/.electron-cash'
end
