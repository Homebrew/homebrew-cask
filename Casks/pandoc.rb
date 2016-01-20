cask 'pandoc' do
  version '1.16-1'
  sha256 'f9c7a5a3b31dae05ee53b1b38de8a8a7ea741d50becbafcf2fba9b140fcba036'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jgm/pandoc/releases/download/#{version.major_minor}/pandoc-#{version}-osx.pkg"
  appcast 'https://github.com/jgm/pandoc/releases.atom',
          checkpoint: '7b51379fd131045dda0f2bf5edddaa2428c3b1db7f331a3a48d4e6eafb9b5922'
  name 'Pandoc'
  homepage 'http://pandoc.org/'
  license :gpl

  conflicts_with formula: 'pandoc'

  pkg "pandoc-#{version}-osx.pkg"

  uninstall pkgutil: 'net.johnmacfarlane.pandoc'
end
