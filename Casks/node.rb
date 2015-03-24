cask :v1 => 'node' do
  version '0.12.1'
  sha256 '67c32b09af2c9356f28fb7cbbd26255ec8331df395c25b5519ce7e6139147c23'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  homepage 'http://nodejs.org'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
