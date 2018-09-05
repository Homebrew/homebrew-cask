cask 'staruml' do
  version '3.0.2'
  sha256 'd5481633893d2934711dd6c98689f593872b794c885a46453146876851d221ab'

  url "http://staruml.io/download/releases/StarUML-#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'

  app 'StarUML.app'
end
