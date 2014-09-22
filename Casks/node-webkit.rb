class NodeWebkit < Cask
  version '0.10.5'
  sha256 '37efb4629ee78b79c03122d8ff4176c08e9423e7f13482ab2b709615f9dbf0fe'

  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-x64.zip"
  homepage 'https://github.com/rogerwang/node-webkit'

  caskroom_only true
end
