cask 'bitpost' do
  version '0.9.8.3'
  sha256 '8e58ddf022eae721bfca6ecb456edf40baa23ea31076ee9c1ad75e947b0cea2b'

  # voluntary.net.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://voluntary.net.s3.amazonaws.com/Bitpost.#{version}.zip"
  name 'Bitpost'
  homepage 'https://voluntary.net/bitpost/'
  license :mit

  app 'Bitpost.app'
end
