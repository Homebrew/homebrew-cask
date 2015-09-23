cask :v1 => 'node' do
  version '4.1.1'
  sha256 '1d7ee48a3d66d895692ca8085470358306eb11f398564834c3030cf3fe9f77e0'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs.node.pkg'
end
