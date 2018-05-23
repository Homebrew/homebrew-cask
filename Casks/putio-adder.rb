cask 'putio-adder' do
  version '3.0.4'
  sha256 'de25d4b698118ce459794121e8a58279820c3872dba7021255097aac021b375f'

  url "https://github.com/nicoSWD/put.io-adder/releases/download/v#{version}/put.io-adder-v#{version}.zip"
  appcast 'https://github.com/nicoSWD/put.io-adder/releases.atom',
          checkpoint: '6af7deab134624999f80884db569258dc994dc9beb6ca58c0a47f261dae66015'
  name 'Put.IO Adder'
  homepage 'https://github.com/nicoSWD/put.io-adder'

  app 'put.io adder.app'
end
