cask 'coinpricebar' do
  version '1.5.0.16'
  sha256 'c2b7a8c6b8f42143ea5545892767ec0186f073a0c2bb79876c0acc226e07599c'

  url "https://github.com/T-Pham/CoinPriceBar/releases/download/#{version}/CoinPriceBar.app.zip"
  appcast 'https://github.com/T-Pham/CoinPriceBar/releases.atom'
  name 'CoinPriceBar'
  homepage 'https://github.com/T-Pham/CoinPriceBar'

  app 'CoinPriceBar.app'

  uninstall quit: 'TPM.CoinPriceBar'
end
