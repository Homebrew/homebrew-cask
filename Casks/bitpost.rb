cask 'bitpost' do
  version '0.9.8.3'
  sha256 '8e58ddf022eae721bfca6ecb456edf40baa23ea31076ee9c1ad75e947b0cea2b'

  # voluntary.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://voluntary.net.s3.amazonaws.com/Bitpost.#{version}.zip"
  appcast 'https://voluntary.net/bitpost/',
          checkpoint: '71fa037263757b22fd91e65c4331cc91c5c541623bd287a33ff3b6ecca236b39'
  name 'Bitpost'
  homepage 'https://voluntary.net/bitpost/'

  app 'Bitpost.app'
end
