cask :v1 => 'purescript' do
  version '0.6.5'
  sha256 '6ee22cd3ce00c3c71a92f09928e037d91541b967dd4bd93e62b2f52ad03e394f'

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
