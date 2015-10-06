cask :v1 => 'node' do
  version '4.1.2'
  sha256 'd1e6e59bea645b4de42ca0b45f302eea32b0af55bccd7fee8da112eaebf6f221'

  url "https://nodejs.org/dist/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg  "node-v#{version}.pkg"

  uninstall :pkgutil => 'org.nodejs.node.pkg'
end
