cask 'coinpricebar' do
  version '1.5.0.13'
  sha256 '9e59907f6cc9fe906715da3e622ff8ab27cc58465b8ad22c526a5f8d6ab7bb0a'

  url "https://github.com/T-Pham/CoinPriceBar/releases/download/#{version}/CoinPriceBar.app.zip"
  appcast 'https://github.com/T-Pham/CoinPriceBar/releases.atom'
  name 'CoinPriceBar'
  homepage 'https://github.com/T-Pham/CoinPriceBar'

  app 'CoinPriceBar.app'

  uninstall quit: 'TPM.CoinPriceBar'
end
