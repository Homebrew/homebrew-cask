cask 'putio-adder' do
  version '2.9'
  sha256 'f0ed3f2a8c4bd5ab3d83dcef72403785c72f990692190de58f1f7d3edf85c0a3'

  url "https://github.com/nicoSWD/put.io-adder/releases/download/v#{version}/put.io-adder-v#{version}.app.zip"
  appcast 'https://github.com/nicoSWD/put.io-adder/releases.atom',
          checkpoint: '61af61693ed928360f852e78effb509b8f30cb3af2eea809d59a5c38bbbbac56'
  name 'Put.IO Adder'
  homepage 'https://github.com/nicoSWD/put.io-adder'
  license :mit

  app 'put.io adder.app'
end
