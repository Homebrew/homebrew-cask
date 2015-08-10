cask :v1 => 'pandoc' do
  version '1.15.0.6'
  sha256 'e5b254480b43d5cce19c01723e93cd357ec285cfe8d320cae5bc15580afb92d4'

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
