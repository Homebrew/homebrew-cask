cask :v1 => 'stockbarjp' do
  version :latest
  sha256 :no_check

  url 'http://midnightsuyama.org/download/StockBarJP.zip'
  homepage 'http://midnightsuyama.org'
  license :unknown

  app 'StockBarJP.app'
end
