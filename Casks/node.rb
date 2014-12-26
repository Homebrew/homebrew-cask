cask :v1 => 'node' do
  version '0.10.34'
  sha256 '0b337976a7efefbff2b019fb8cd58d3cd3bb8417338037891c5118b2be41be6f'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  homepage 'http://nodejs.org'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
