cask 'pandoc' do
  version '1.16.0.2'
  sha256 'd1777fa45cb05518f79d4793a7e955a0f0927a934be4d112ff6926f1459b0c07'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-osx.pkg"
  appcast 'https://github.com/jgm/pandoc/releases.atom',
          checkpoint: '29e6a6220ed4dd82ebeec5f2d41e3e507d892042e81ac1108a5bd17ee5804b49'
  name 'Pandoc'
  homepage 'http://pandoc.org/'
  license :gpl

  conflicts_with formula: 'pandoc'

  pkg "pandoc-#{version}-osx.pkg"

  uninstall pkgutil: 'net.johnmacfarlane.pandoc'
end
