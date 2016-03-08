cask 'node' do
  version '4.3.2'
  sha256 'f27eda062619f624d198012735cd996bbe7999715dbed1d6e47f3dbc4529b7a6'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
