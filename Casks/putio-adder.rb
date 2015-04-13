cask :v1 => 'putio-adder' do
  version '2.9'
  sha256 'f0ed3f2a8c4bd5ab3d83dcef72403785c72f990692190de58f1f7d3edf85c0a3'

  url "https://github.com/nicoSWD/put.io-adder/releases/download/v#{version}/put.io-adder-v#{version}.app.zip"
  appcast 'https://github.com/nicoSWD/put.io-adder/releases.atom'
  name 'Put.IO Adder'
  homepage 'https://github.com/nicoSWD/put.io-adder'
  license :mit

  app 'put.io adder.app'
end
