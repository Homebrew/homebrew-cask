cask 'node' do
  version '4.4.1'
  sha256 '02e77d4ccd6d2a97124f61fc264f0e51268fe395c5de7f7528897eb7d31873e3'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
