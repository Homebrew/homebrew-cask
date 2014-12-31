cask :v1 => 'putio-adder' do
  version '2.7'
  sha256 'b4ac5fc97da0a8b83e56bd5cac0e1795ce7102aae3a69fb77fa64d9ed2f22c14'

  url "https://github.com/nicoSWD/put.io-adder/releases/download/v#{version}/put.io-adder-v#{version}.zip"
  homepage 'https://github.com/nicoSWD/put.io-adder'
  license :oss

  app 'put.io adder.app'
end
