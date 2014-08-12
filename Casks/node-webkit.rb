class NodeWebkit < Cask
  version '0.10.2'
  sha256 '3bd4d90d21ca58f38a9de74e712f2f98afc1c75e6d05895d748492db45c40adc'

  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-x64.zip"
  homepage 'https://github.com/rogerwang/node-webkit'

  caskroom_only true
end
