cask 'node' do
  version '4.2.3'
  sha256 '0d72b52f99291bef3961ca78b9add920524eae84b4879c0e003546bd28f7a604'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs.node.pkg'
end
