cask 'stack' do
  version '1.0.0'
  sha256 '921575d26ce4e2fcc195e135f279fc5f19b9e3ce7f79e2e13ac38e6507350457'

  url "https://github.com/commercialhaskell/stack/releases/download/v#{version}/stack-#{version}-osx-x86_64.tar.gz"
  appcast 'https://github.com/commercialhaskell/stack/releases.atom',
          :sha256 => '79b1cd5fd94d82709b0a685f16e2d5710d1444167dc8624d1a2625093fddfb6b'
  name 'stack'
  homepage 'https://github.com/commercialhaskell/stack'
  license :bsd

  depends_on :arch => :x86_64

  binary "stack-#{version}-osx-x86_64/stack"
end
