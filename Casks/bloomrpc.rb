cask 'bloomrpc' do
  version '1.3.1'
  sha256 '229212189e90f742c9318d6fc8ca61e45f939f03d63a32eb0e70f3b39e7dd9d0'

  url "https://github.com/uw-labs/bloomrpc/releases/download/#{version}/BloomRPC-#{version}.dmg"
  appcast 'https://github.com/uw-labs/bloomrpc/releases.atom'
  name 'BloomRPC'
  homepage 'https://github.com/uw-labs/bloomrpc'

  app 'BloomRPC.app'
end
