cask 'armory' do
  version '0.93.3'
  sha256 'ecadb37e43f86a06815f0bc0cec8708b64fd3b53d9c01d7c939d2c941a5e8e91'

  url "https://www.bitcoinarmory.com/downloads/bitcoinarmory-releases/armory_#{version}_osx.tar.gz"
  name 'Armory'
  homepage 'https://bitcoinarmory.com/'
  license :affero

  app 'Armory.app'
end
