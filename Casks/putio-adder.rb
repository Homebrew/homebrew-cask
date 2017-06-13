cask 'putio-adder' do
  version '3.0.3'
  sha256 'c42b4c57d63e6fbd615c40723edf5cb9dee47a566f1f6dfedfb7d213797d0b40'

  url "https://github.com/nicoSWD/put.io-adder/releases/download/v#{version}/put.io-adder-v#{version}.zip"
  appcast 'https://github.com/nicoSWD/put.io-adder/releases.atom',
          checkpoint: '57a451d324a67f8cc240c9e8cbb4bb0b91b4d8a853ae6f025b5504e2315fc03d'
  name 'Put.IO Adder'
  homepage 'https://github.com/nicoSWD/put.io-adder'

  app 'put.io adder.app'
end
