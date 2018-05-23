cask 'coinpricebar' do
  version '1.5'
  sha256 '7da0e17bd64d357b44b80ad20acf9d9224a9f50cd8e65d222605b0cea42c203f'

  url "https://github.com/T-Pham/CoinPriceBar/releases/download/#{version}/CoinPriceBar.app.zip"
  appcast 'https://github.com/T-Pham/CoinPriceBar/releases.atom',
          checkpoint: '6498833f72bbb07f7f5476727997b2b8a25e9801cad52635c14a72c56f10bf2f'
  name 'CoinPriceBar'
  homepage 'https://github.com/T-Pham/CoinPriceBar'

  app 'CoinPriceBar.app'

  uninstall quit: 'TPM.CoinPriceBar'
end
