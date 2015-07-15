cask :v1 => 'node' do
  version '0.12.7'
  sha256 '342080e569e39fd7e829591411ea7556d6739e7a33bd43ecf0833d26fb7da827'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
