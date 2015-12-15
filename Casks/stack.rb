cask :v1_1 => 'stack' do
  version '0.1.10.1'
  sha256 '79abca83450e4c312b4c48ceb32bdf233dea9b67efb95cf2ced4534066c43494'

  url "https://github.com/commercialhaskell/stack/releases/download/v#{version}/stack-#{version}-osx-x86_64.tar.gz"
  appcast 'https://github.com/commercialhaskell/stack/releases.atom'
  name 'stack'
  homepage 'https://github.com/commercialhaskell/stack'
  license :bsd

  binary "stack-#{version}-osx-x86_64/stack"

  depends_on :arch => :x86_64
end
