cask 'chainsaw' do
  version :latest
  sha256 :no_check

  url 'https://logging.apache.org/chainsaw/webstart/chainsaw.dmg'
  name 'Chainsaw'
  homepage 'https://logging.apache.org/chainsaw/'

  app 'Chainsaw.app'

  zap trash: '~/.chainsaw'
end
