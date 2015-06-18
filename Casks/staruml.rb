cask :v1 => 'staruml' do
  version '2.2.0'
  sha256 '495f53d686391bfb2fc6c3ae989dfeeced5d82e4b526dffa380eecb588d0c4d9'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'
  license :commercial

  app 'StarUML.app'
end
