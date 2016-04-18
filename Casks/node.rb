cask 'node' do
  version '4.4.3'
  sha256 '2e7cfa53c916524add24d7407572ede6d199a0a7b539ba6da67fd5a97c7ebab2'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
