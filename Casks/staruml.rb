cask :v1 => 'staruml' do
  version '2.5.0'
  sha256 '1e974938956bb30d03ff3d6b9cf009d999ccc237c15d50693e02cd7451791404'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'
  license :commercial

  app 'StarUML.app'
end
