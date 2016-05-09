cask 'node' do
  version '4.4.4'
  sha256 '0e26458c8490af8f7d1aa4db8ca2792e2089fc0065517225cb30d4f22778b288'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
