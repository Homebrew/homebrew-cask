cask :v1 => 'stockbarjp' do
  version :latest
  sha256 :no_check

  url 'http://midnightsuyama.org/download/StockBarJP.zip'
  homepage 'http://midnightsuyama.org/blog/articles/stockbarjp/'
  license :unknown    # todo: improve this machine-generated value

  app 'StockBarJP.app'
end
