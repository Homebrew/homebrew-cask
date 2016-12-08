cask 'staruml' do
  version '2.8.0'
  sha256 'cdeb05bdcfb83d8182c419638faa32cebef2d5c3c9c639b336bb2f12d7cd473d'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'

  app 'StarUML.app'
end
