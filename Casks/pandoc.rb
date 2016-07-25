cask 'pandoc' do
  version '1.17.2'
  sha256 'e733d3f0ecafe4fc76c503162d4a08f69a237fcb48085626a7a7a2e2da3a405f'

  # github.com/jgm/pandoc was verified as official when first introduced to the cask
  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-osx.pkg"
  appcast 'https://github.com/jgm/pandoc/releases.atom',
          checkpoint: '1de4300533008d6ea951e33fb8acf4c69b741591d4b43fa7ad511afbbfa959b5'
  name 'Pandoc'
  homepage 'http://pandoc.org/'
  license :gpl

  conflicts_with formula: 'pandoc'

  pkg "pandoc-#{version}-osx.pkg"

  uninstall pkgutil: 'net.johnmacfarlane.pandoc'
end
