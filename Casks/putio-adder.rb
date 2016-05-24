cask 'putio-adder' do
  version '3.0.1'
  sha256 '3af8635623f34a026fed3b2462cbf2a7c5d1feaeb069f9c69bd895be57c9005a'

  url "https://github.com/nicoSWD/put.io-adder/releases/download/v#{version}/put.io-adder-v#{version}.zip"
  appcast 'https://github.com/nicoSWD/put.io-adder/releases.atom',
          checkpoint: '54ead36de141e797d8700f12ea59f39e89a12d42a48ae9d08d7eab6a94857eef'
  name 'Put.IO Adder'
  homepage 'https://github.com/nicoSWD/put.io-adder'
  license :mit

  app 'put.io adder.app'
end
