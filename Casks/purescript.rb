cask :v1 => 'purescript' do
  version '0.6.9.5'
  sha256 'f4dac6698a16b713d6a50b0d0bcfbf1d240a7b3369e2c0f727933e9f49033dbd'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/purescript/purescript/releases/download/v#{version}/macos.tar.gz"
  appcast 'https://github.com/purescript/purescript/releases.atom'
  name 'PureScript'
  homepage 'http://purescript.org'
  license :mit

  binary 'purescript/psc'
  binary 'purescript/psc-docs'
  binary 'purescript/psc-make'
  binary 'purescript/psci'
end
