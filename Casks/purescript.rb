cask :v1 => 'purescript' do
  version '0.6.9.3'
  sha256 '9dfa8d93f9000718e8c77d0e5abd1a353a47b12acae8482626f22ece43e1dede'

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
