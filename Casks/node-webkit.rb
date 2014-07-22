class NodeWebkit < Cask
  version '0.10.0'
  sha256 '37e2000b5bbc9a96c55ab15c86b21aeb38de2aa7d373c04c5f820d5bae07dc54'

  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-ia32.zip"
  homepage 'https://github.com/rogerwang/node-webkit'

  caskroom_only true
end
