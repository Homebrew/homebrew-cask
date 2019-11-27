cask 'staruml' do
  version '3.1.1'
  sha256 'ede537301b4193d86057a8704d75e35d4f7df628bff274bf8bbe753e638de119'

  url "http://staruml.io/download/releases/StarUML-#{version}.dmg"
  appcast 'http://staruml.io/'
  name 'StarUML'
  homepage 'http://staruml.io/'

  app 'StarUML.app'
end
