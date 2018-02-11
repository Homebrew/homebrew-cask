cask 'etcher-cli' do
  version '1.3.1'
  sha256 '6e862e2d2e64c264fb90ec409d82b43c1719453f5ed1cff18aa31b2d890ac6c7'

  url "https://github.com/resin-io/etcher/releases/download/v#{version}/Etcher-cli-#{version}-darwin-x64.tar.gz"
  name 'Etcher CLI'
  homepage 'https://etcher.io/cli'

  binary "Etcher-cli-#{version}-darwin-x64/etcher"
end
