cask :v1 => 'chainsaw' do
  version :latest
  sha256 :no_check

  url "https://logging.apache.org/chainsaw/webstart/chainsaw.dmg"
  name 'Chainsaw'
  homepage 'http://logging.apache.org/chainsaw/'
  license :apache

  app 'Chainsaw.app'

  zap :delete => '~/.chainsaw'
  
  depends_on :arch => :ppc
end
