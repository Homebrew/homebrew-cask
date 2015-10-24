cask :v1 => 'node' do
  version '4.2.1'
  sha256 '688df0a12461f378b296f69e8ae2c1cbb974b0216278624815bce7dcfea080c2'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs.node.pkg'
end
