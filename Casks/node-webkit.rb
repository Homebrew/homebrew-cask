class NodeWebkit < Cask
  version '0.10.1'
  sha256 '8842b014d4c1719dbdbb4a6d5f5172c77375b068c44720f5b7166d7acbdeaf2a'

  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-x64.zip"
  homepage 'https://github.com/rogerwang/node-webkit'

  caskroom_only true
end
