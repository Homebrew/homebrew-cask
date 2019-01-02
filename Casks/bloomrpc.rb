cask 'bloomrpc' do
  version '1.2.0'
  sha256 'a43e32f5a06545711e82e72ba15ab1198fac219c672362712ced06f3ea99a5ab'

  url "https://github.com/uw-labs/bloomrpc/releases/download/v#{version}/BloomRPC-#{version}.dmg"
  appcast 'https://github.com/uw-labs/bloomrpc/releases.atom'
  name 'BloomRPC'
  homepage 'https://github.com/uw-labs/bloomrpc'

  app 'BloomRPC.app'
end
