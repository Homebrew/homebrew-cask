cask :v1 => 'purescript' do
  version '0.6.3'
  sha256 'f2b2281b2db1d66570b16bbe6d104ba36787ed7d684b640917e673ea0cc5cdc2'

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
