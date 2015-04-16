cask :v1 => 'node' do
  version '0.12.2'
  sha256 '5fc20b6f2ebe3ec4c14ccffe2c1c7d1f3453b84e4e6b5d80b749c8a1fc46bc6f'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'http://nodejs.org'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
