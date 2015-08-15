cask :v1 => 'purescript' do
  version '0.7.3'
  sha256 '38a9e1ade9e9926bfe360392ed2b10a8c66af80b0b2f7b06fb6242d7733e8039'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/purescript/purescript/releases/download/v#{version}/macos.tar.gz"
  appcast 'https://github.com/purescript/purescript/releases.atom'
  name 'PureScript'
  homepage 'http://purescript.org'
  license :mit

  binary 'purescript/psc'
  binary 'purescript/psc-bundle'
  binary 'purescript/psc-docs'
  binary 'purescript/psc-publish'
  binary 'purescript/psci'
end
