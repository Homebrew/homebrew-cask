cask :v1 => 'node' do
  version '0.12.0'
  sha256 'affaad9cd2d3797ae353a9def2023793cb8795beeccc11f28257701581740bf1'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  homepage 'http://nodejs.org'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
