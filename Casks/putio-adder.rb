cask 'putio-adder' do
  version '3.0.3'
  sha256 'c42b4c57d63e6fbd615c40723edf5cb9dee47a566f1f6dfedfb7d213797d0b40'

  url "https://github.com/nicoSWD/put.io-adder/releases/download/v#{version}/put.io-adder-v#{version}.zip"
  appcast 'https://github.com/nicoSWD/put.io-adder/releases.atom',
          checkpoint: '1af60519628aee23f998cb8ddfa51db300f29ddff73e8064e2a95ece9249585f'
  name 'Put.IO Adder'
  homepage 'https://github.com/nicoSWD/put.io-adder'

  app 'put.io adder.app'
end
