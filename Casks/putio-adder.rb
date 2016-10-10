cask 'putio-adder' do
  version '3.0.1'
  sha256 '3af8635623f34a026fed3b2462cbf2a7c5d1feaeb069f9c69bd895be57c9005a'

  url "https://github.com/nicoSWD/put.io-adder/releases/download/v#{version}/put.io-adder-v#{version}.zip"
  appcast 'https://github.com/nicoSWD/put.io-adder/releases.atom',
          checkpoint: '0950d87d6b7fd15239b8dd6de551677cf66d0cb91c215c93afe572004cf93c67'
  name 'Put.IO Adder'
  homepage 'https://github.com/nicoSWD/put.io-adder'

  app 'put.io adder.app'
end
