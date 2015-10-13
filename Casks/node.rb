cask :v1 => 'node' do
  version '4.2.0'
  sha256 '83005cd68ebf94c528b1da28cc3915df56426224ce6f6337ad2b067be87a00b0'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs.node.pkg'
end
