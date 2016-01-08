cask 'pandoc' do
  version '1.16-1'
  sha256 'f9c7a5a3b31dae05ee53b1b38de8a8a7ea741d50becbafcf2fba9b140fcba036'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jgm/pandoc/releases/download/#{version.major_minor}/pandoc-#{version}-osx.pkg"
  appcast 'https://github.com/jgm/pandoc/releases.atom',
          :sha256 => '4c31cd4d0b9cb39fac7c6fa9d4a3d5ee99e622a84097cd9d57d7f3130241bf00'
  name 'Pandoc'
  homepage 'http://pandoc.org/'
  license :gpl

  conflicts_with :formula => 'pandoc'

  pkg "pandoc-#{version}-osx.pkg"

  uninstall :pkgutil => 'net.johnmacfarlane.pandoc'
end
