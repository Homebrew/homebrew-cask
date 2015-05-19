cask :v1 => 'node' do
  version '0.12.3'
  sha256 '215366375df44bb77998f34eeedae256416ca91049c1551a6b25164842cdb8b3'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'http://nodejs.org'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
