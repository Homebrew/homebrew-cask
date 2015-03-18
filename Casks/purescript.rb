cask :v1 => 'purescript' do
  version '0.6.9'
  sha256 '38261d62c9e632e4b24f8d62ef0be7569b4db43a1365aa8e06783ba1e1d8de53'

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
