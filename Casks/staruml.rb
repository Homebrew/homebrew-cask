cask :v1 => 'staruml' do
  version '2.4.0'
  sha256 '435e6c81f809f9e9e43184d29512bb8bbb8183a76b2b95d8aaa76a8e546c2d50'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'
  license :commercial

  app 'StarUML.app'
end
