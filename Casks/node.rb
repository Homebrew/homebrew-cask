cask :v1 => 'node' do
  version '4.1.0'
  sha256 '9df8830c12bd28a5c1a0e1355cad9f50546e40ce681061d62f7a16e351272764'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs.node.pkg'
end
