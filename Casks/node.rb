cask 'node' do
  version '4.3.1'
  sha256 '75195a95819aeb8aad75c8ec3b9592eb42ca483d4d2a74d299c942eb25cdf61e'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
