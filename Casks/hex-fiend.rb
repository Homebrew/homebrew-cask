cask :v1 => 'hex-fiend' do
  version :latest
  sha256 :no_check

  url 'http://ridiculousfish.com/hexfiend/files/HexFiend.zip'
  homepage 'http://ridiculousfish.com/hexfiend/'
  license :bsd

  app 'Hex Fiend.app'
end
