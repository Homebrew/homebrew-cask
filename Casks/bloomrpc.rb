cask 'bloomrpc' do
  version '1.4.0'
  sha256 '3daaf8c7035aed03d0171d34a791f5e61bc1b1ac1ac1d99d69068043f6cbd93c'

  url "https://github.com/uw-labs/bloomrpc/releases/download/#{version}/BloomRPC-#{version}.dmg"
  appcast 'https://github.com/uw-labs/bloomrpc/releases.atom'
  name 'BloomRPC'
  homepage 'https://github.com/uw-labs/bloomrpc'

  app 'BloomRPC.app'
end
