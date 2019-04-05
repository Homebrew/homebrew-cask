cask 'bloomrpc' do
  version '1.3.0'
  sha256 '2a129cb144f4a1b4f5e307c1aef4712baff318fe410ef1edc6d9ce3d802d862e'

  url "https://github.com/uw-labs/bloomrpc/releases/download/#{version}/BloomRPC-#{version}.dmg"
  appcast 'https://github.com/uw-labs/bloomrpc/releases.atom'
  name 'BloomRPC'
  homepage 'https://github.com/uw-labs/bloomrpc'

  app 'BloomRPC.app'
end
