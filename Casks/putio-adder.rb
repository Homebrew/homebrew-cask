cask 'putio-adder' do
  version '3.0.2'
  sha256 '592449ab9fb38b9800b4f36afb0b3622b536ab75b6efadf7a40be4a15f08426a'

  url "https://github.com/nicoSWD/put.io-adder/releases/download/v#{version}/put.io-adder-v#{version}.zip"
  appcast 'https://github.com/nicoSWD/put.io-adder/releases.atom',
          checkpoint: 'dcf34cf9fcbe706e3a04e7b8a5ecd13656943d8d0cffa0927d3cdf58d55dfe66'
  name 'Put.IO Adder'
  homepage 'https://github.com/nicoSWD/put.io-adder'

  app 'put.io adder.app'
end
