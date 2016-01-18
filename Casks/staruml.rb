cask 'staruml' do
  version '2.6.0'
  sha256 '28653aaf023300b49f9e291ba837c8cc9addc1433fa5b63b89c49351447d445b'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'
  license :commercial

  app 'StarUML.app'
end
