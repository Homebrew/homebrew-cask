cask :v1 => 'purescript' do
  version '0.6.6'
  sha256 'd5d8af17710989f61ae482fb2b6202e7e83242420015b3b3d59d74778508db6a'

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
