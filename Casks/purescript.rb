cask :v1 => 'purescript' do
  version '0.6.7'
  sha256 '882e6b8592f8ac64c6259ba563a6d085390e5dac5e1a91782469d7f9b64cf25e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/purescript/purescript/releases/download/v#{version}/macos.tar.gz"
  name 'PureScript'
  homepage 'http://purescript.org'
  license :mit

  binary 'purescript/psc'
  binary 'purescript/psc-docs'
  binary 'purescript/psc-make'
  binary 'purescript/psci'
end
