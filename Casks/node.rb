cask :v1 => 'node' do
  version '0.12.4'
  sha256 'ca483deb4cf71bb308e2c140c4773d7521a42e27d0f17a07f183169bb416aea0'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'http://nodejs.org'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
