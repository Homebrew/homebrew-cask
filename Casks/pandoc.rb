cask 'pandoc' do
  version '1.17'
  sha256 '8be59e86e2438d8071f9033ac3adf0319d70ff9bd3a944b3b5e92769b8f0b787'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-osx.pkg"
  appcast 'https://github.com/jgm/pandoc/releases.atom',
          checkpoint: '70aaecdeba6ac0d132bef954b808b1a64edaf9f7f3a7919147035668091b8ebf'
  name 'Pandoc'
  homepage 'http://pandoc.org/'
  license :gpl

  conflicts_with formula: 'pandoc'

  pkg "pandoc-#{version}-osx.pkg"

  uninstall pkgutil: 'net.johnmacfarlane.pandoc'
end
