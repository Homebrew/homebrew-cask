cask 'node' do
  version '4.3.0'
  sha256 'cafa3e7dc44fdd1459fcd81e4a770629f8fed4c74f77c446f9acde30a444bb28'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
