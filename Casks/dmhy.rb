cask 'dmhy' do
  version '2.0.1'
  sha256 '2edcbfca18df69a509231fa8a1fbce5ddaec34f164383e384310e418d2cc9567'

  url "https://github.com/yaqinking/DMHY/releases/download/v#{version}/DMHY.app.zip"
  appcast 'https://github.com/yaqinking/DMHY/releases.atom',
          checkpoint: 'a6341357ea5a312e1977d017d119a211904afa2e615000e2b60f5426553ad796'
  name 'DMHY'
  homepage 'https://github.com/yaqinking/DMHY'

  app 'DMHY.app'
end
