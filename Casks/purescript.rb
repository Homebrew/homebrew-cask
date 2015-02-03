cask :v1 => 'purescript' do
  version '0.6.4.1'
  sha256 'dd5c6b197876a241be9b092e79879a6fcf37dec8f99406a74eb6fc177d72161d'

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
