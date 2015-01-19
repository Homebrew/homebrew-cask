cask :v1 => 'node-webkit' do
  version '0.11.5'
  sha256 '94af5cd1a77ef72ab04c5af3c132e6402289aad602587202a3d08f014e863943'

  # webkit.org is the official download host per the vendor homepage
  url "http://dl.node-webkit.org/v#{version}/node-webkit-v#{version}-osx-x64.zip"
  homepage 'https://github.com/rogerwang/node-webkit'
  license :mit

  stage_only true
end
