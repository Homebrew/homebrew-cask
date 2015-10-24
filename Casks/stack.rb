cask :v1_1 => 'stack' do
  version '0.1.6.0'
  sha256 '608ef6cf9c7b37c0d964deaf071558c8381fc4c3564a5f3f6685da3f1be8455f'

  url "https://github.com/commercialhaskell/stack/releases/download/v#{version}/stack-#{version}-osx-x86_64.tar.gz"
  appcast 'https://github.com/commercialhaskell/stack/releases.atom'
  name 'stack'
  homepage 'https://github.com/commercialhaskell/stack'
  license :bsd

  binary "stack-#{version}-osx-x86_64/stack"

  depends_on :arch => :x86_64
end
