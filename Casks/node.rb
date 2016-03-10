cask 'node' do
  version '4.4.0'
  sha256 '13eb21a569218815b37893af9f6080eaa8156d0e66c38ed15e5bed4abac739e4'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
