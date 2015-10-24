cask :v1 => 'staruml' do
  version '2.5.1'
  sha256 '7d0df865b2a883c1b90a164ac29f5ab5ebe9dcbb22d7595e98eb011888abcf23'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'
  license :commercial

  app 'StarUML.app'
end
