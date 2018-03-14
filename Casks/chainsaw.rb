cask 'chainsaw' do
  version '2.0.0'
  sha256 'b90b0e180f76772cf84e2844e54ddfaa6a5fb2e5a68c0f96eef2503785f299e6'

  url "http://www-us.apache.org/dist/logging/chainsaw/#{version}/apache-chainsaw-#{version}-standalone.zip"
  name 'Chainsaw'
  homepage 'https://logging.apache.org/chainsaw/'

  app 'Chainsaw.app'

  zap trash: '~/.chainsaw'
end
