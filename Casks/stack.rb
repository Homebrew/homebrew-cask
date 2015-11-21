cask :v1_1 => 'stack' do
  version '0.1.8.0'
  sha256 '16e574595046a5cf2ecc395506c800f1eb194587173c74e374732d776c060f57'

  url "https://github.com/commercialhaskell/stack/releases/download/v#{version}/stack-#{version}-osx-x86_64.tar.gz"
  appcast 'https://github.com/commercialhaskell/stack/releases.atom'
  name 'stack'
  homepage 'https://github.com/commercialhaskell/stack'
  license :bsd

  binary "stack-#{version}-osx-x86_64/stack"

  depends_on :arch => :x86_64
end
