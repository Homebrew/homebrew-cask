cask 'chainsaw' do
  version :latest
  sha256 :no_check

  url 'https://logging.apache.org/chainsaw/webstart/chainsaw.dmg'
  name 'Chainsaw'
  homepage 'https://logging.apache.org/chainsaw/'
  license :apache

  depends_on arch: :ppc

  app 'Chainsaw.app'

  zap delete: '~/.chainsaw'
end
