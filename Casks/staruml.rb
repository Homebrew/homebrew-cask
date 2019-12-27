cask 'staruml' do
  version '3.2.1'
  sha256 'a39ad940c95a93c47be1f491a8072a62428574e9b0eda1d64025a9bfbff657a2'

  url "http://staruml.io/download/releases/StarUML-#{version}.dmg"
  appcast 'http://staruml.io/'
  name 'StarUML'
  homepage 'http://staruml.io/'

  app 'StarUML.app'
end
