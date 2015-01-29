cask :v1 => 'node' do
  version '0.10.36'
  sha256 'f6702b77c7b2f269834acab2210fc5bf43bc20467652ddefb55ccec61c58193a'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  homepage 'http://nodejs.org'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
