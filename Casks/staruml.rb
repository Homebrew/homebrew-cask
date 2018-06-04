cask 'staruml' do
  version '3.0.0'
  sha256 'b0a96242ef7c642b16cf08ff16814ab4b5791b5dbbf8164d3a181c177608560b'

  url "http://staruml.io/download/releases/StarUML-#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'

  app 'StarUML.app'
end
