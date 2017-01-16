cask 'earthcoin' do
  version '1.3.3'
  sha256 'ba7db69c0f4da53ffae00fa1f593a24e4e7821e84c79e8dbeebc6bdefc6354c6'

  url "https://github.com/earthcoinproject/earthcoin/releases/download/v#{version}/EarthCoin-Qt-#{version}.dmg"
  appcast 'https://github.com/earthcoinproject/earthcoin/releases.atom',
          checkpoint: '406ba1e1d3df7414a784dca7e33c088126de1f21be61e1cf99e179d4a277bfba'
  name 'Earthcoin'
  homepage 'https://github.com/earthcoinproject/earthcoin'

  app 'EarthCoin-Qt.app'
end
