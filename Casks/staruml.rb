cask 'staruml' do
  version '3.1.0'
  sha256 '164950e05f0dace320c1590368f8b66bfe02235f3d96743d52c991b07c891390'

  url "http://staruml.io/download/releases/StarUML-#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'

  app 'StarUML.app'
end
