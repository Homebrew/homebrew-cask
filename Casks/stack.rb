cask :v1_1 => 'stack' do
  version '0.1.10.0'
  sha256 'd3f98aef526b8037dc5bcdea2a8944378c47e1e7c44b39eaefb4f55e7cb48703'

  url "https://github.com/commercialhaskell/stack/releases/download/v#{version}/stack-#{version}-osx-x86_64.tar.gz"
  appcast 'https://github.com/commercialhaskell/stack/releases.atom'
  name 'stack'
  homepage 'https://github.com/commercialhaskell/stack'
  license :bsd

  binary "stack-#{version}-osx-x86_64/stack"

  depends_on :arch => :x86_64
end
