cask :v1 => 'node' do
  version '0.10.33'
  sha256 '6f1ab706d6b5b960d7ce4a8a0edba2774b16757fe15dcc7ecb07c5464975d71f'

  url "http://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  homepage 'http://nodejs.org'
  license :unknown

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs'
end
