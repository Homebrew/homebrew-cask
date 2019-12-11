cask 'staruml' do
  version '3.2.0'
  sha256 '1b84fc011eeeb6ad71d4442c8232557c4cb68d9ebcd771b710a0fac3053b4307'

  url "http://staruml.io/download/releases/StarUML-#{version}.dmg"
  appcast 'http://staruml.io/'
  name 'StarUML'
  homepage 'http://staruml.io/'

  app 'StarUML.app'
end
