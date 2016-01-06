cask 'node' do
  version '4.2.4'
  sha256 '2dff0a6e14ff25d7aa34b47f1863a0de61cd26918d0954055b783186a3a7614e'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs.node.pkg'
end
