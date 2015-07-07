cask :v1 => 'node' do
  version '0.12.5'
  sha256 'f113a8cba38fb1b09a167d7703719a6b2f40ac7f6d55d0f0e66744937924eedc'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
