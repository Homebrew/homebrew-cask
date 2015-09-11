cask :v1 => 'node' do
  version '4.0.0'
  sha256 '387dd01caf168267749b0ddc7702b2fef7c95fbe1b2dab9a41ded02c11f16889'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
