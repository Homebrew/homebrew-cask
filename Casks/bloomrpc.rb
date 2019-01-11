cask 'bloomrpc' do
  version '1.2.1'
  sha256 '568bd0cb4956463806c9ff56e338a1f6e0b43cd669f8e654fa7fe22a051084e8'

  url "https://github.com/uw-labs/bloomrpc/releases/download/v#{version}/BloomRPC-#{version}.dmg"
  appcast 'https://github.com/uw-labs/bloomrpc/releases.atom'
  name 'BloomRPC'
  homepage 'https://github.com/uw-labs/bloomrpc'

  app 'BloomRPC.app'
end
