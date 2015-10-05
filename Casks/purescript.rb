cask :v1 => 'purescript' do
  version '0.7.4.1'
  sha256 '9a18c747c92b679d2a3a0b124efd81f9a06dac5f4f3c7ebfe03ca90eb08a6aeb'

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
