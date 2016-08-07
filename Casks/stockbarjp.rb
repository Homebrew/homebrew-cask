cask 'stockbarjp' do
  version :latest
  sha256 :no_check

  url 'http://midnightsuyama.org/download/StockBarJP.zip'
  name 'StockBarJP'
  homepage 'http://midnightsuyama.org/blog/articles/stockbarjp/'
  license :gratis

  app 'StockBarJP.app'
end
