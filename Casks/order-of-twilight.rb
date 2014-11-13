cask :v1 => 'order-of-twilight' do
  version :latest
  sha256 :no_check

  url 'http://stabyourself.net/dl.php?file=orderoftwilight/orderoftwilight-osx.zip'
  homepage 'http://stabyourself.net/orderoftwilight/'
  license :oss

  app 'Order of Twilight.app'
end
