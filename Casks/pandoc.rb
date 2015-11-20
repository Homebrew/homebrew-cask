cask :v1 => 'pandoc' do
  version '1.15.2'
  sha256 'fa80c90e30ec24d00d3982caf345854671122d7e50b89b04d7d1628671f185b0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-osx.pkg"
  appcast 'https://github.com/jgm/pandoc/releases.atom'
  name 'Pandoc'
  homepage 'http://johnmacfarlane.net/pandoc'
  license :gpl

  pkg "pandoc-#{version}-osx.pkg"

  uninstall :pkgutil => 'net.johnmacfarlane.pandoc'

  conflicts_with :formula => 'pandoc'
end
