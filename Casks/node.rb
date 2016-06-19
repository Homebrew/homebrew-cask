cask 'node' do
  version '4.4.5'
  sha256 'fc5688c7f649ea06ce21246c7aa795aa9100c9e90e4c3fe182bb8cc67435375a'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
