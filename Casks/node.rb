cask :v1 => 'node' do
  version '0.10.35'
  sha256 '5fc8d4f7137d0ee6e23cb6368dd2d219f389153b7a9898f26f7e35aee19c1dcf'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  homepage 'http://nodejs.org'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
