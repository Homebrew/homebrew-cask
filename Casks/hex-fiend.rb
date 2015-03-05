cask :v1 => 'hex-fiend' do
  version '2.3.0'
  sha256 '0e0a683971c872ee734af2a3440f1f2abb8d442609077bd5c3e212ab3b5439f7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/ridiculousfish/HexFiend/releases/download/v#{version}/Hex.Fiend.app.zip"
  homepage 'http://ridiculousfish.com/hexfiend/'
  license :bsd

  app 'Hex Fiend.app'
end
