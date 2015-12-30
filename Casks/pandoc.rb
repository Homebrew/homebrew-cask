cask 'pandoc' do
  version '1.15.2'
  sha256 'fa80c90e30ec24d00d3982caf345854671122d7e50b89b04d7d1628671f185b0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-osx.pkg"
  appcast 'https://github.com/jgm/pandoc/releases.atom',
          :sha256 => '1a31f4b4e13283e87e6f09b0a3f3b32c19eb93c98bd7298917d14008aabcacaf'
  name 'Pandoc'
  homepage 'http://pandoc.org/'
  license :gpl

  pkg "pandoc-#{version}-osx.pkg"

  uninstall :pkgutil => 'net.johnmacfarlane.pandoc'

  conflicts_with :formula => 'pandoc'
end
