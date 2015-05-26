cask :v1 => 'staruml' do
  version '2.1.4'
  sha256 '9a54647c41e064dcb45729094b1a8365357c36f29b6606bf4fe71b85241e3a3a'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'
  license :commercial

  app 'StarUML.app'
end
