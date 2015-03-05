cask :v1 => 'purescript' do
  version '0.6.8'
  sha256 'a5ab60c44cb90cca7b4966eb15d71c179e37ecc18e4df2698b177067404d8971'

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
