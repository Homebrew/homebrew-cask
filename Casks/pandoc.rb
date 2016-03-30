cask 'pandoc' do
  version '1.17.0.2'
  sha256 '79aa0bdbcc5df8c87041a5497f1dc090ea6d993a9788f650d53abf96c68228bd'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-osx.pkg"
  appcast 'https://github.com/jgm/pandoc/releases.atom',
          checkpoint: '2b4cb56d54977995bf215de6b8caf7964b9d5dbbeb79ef19c971e398e345b49b'
  name 'Pandoc'
  homepage 'http://pandoc.org/'
  license :gpl

  conflicts_with formula: 'pandoc'

  pkg "pandoc-#{version}-osx.pkg"

  uninstall pkgutil: 'net.johnmacfarlane.pandoc'
end
