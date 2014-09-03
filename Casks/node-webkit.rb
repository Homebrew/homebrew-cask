class NodeWebkit < Cask
  version '0.10.3'
  sha256 'f5c6776406c85249ec58cd0c71bd2840a1e0bfd4d0c1764a767e4386ff0e4c70'

  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-x64.zip"
  homepage 'https://github.com/rogerwang/node-webkit'

  caskroom_only true
end
