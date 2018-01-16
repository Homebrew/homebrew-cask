cask 'staruml' do
  version '2.8.1'
  sha256 '82b91db8353083f7ca9e615547c48e9e92292ec3906bac66a0d1b9129e5507a9'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'

  app 'StarUML.app'
end
